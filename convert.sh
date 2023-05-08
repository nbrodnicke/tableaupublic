#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

## Convert old tde files to hyper files
#find . -type f -name '*.tde' -exec \
#  ./tde2hyper.py {} \;
#
## Export hyper files as CSV
#find . -type f -name '*.hyper' -exec \
#  ./hyper2csv.py {} \;

# Extract the SQL queries from the log
find . -type f -name 'hyperd.log' -print0 | while IFS= read -r -d '' LOG; do
  DIR=$(dirname "$LOG" | cut -c 3-)
  ALL_QUERIES=$(
    cat "$LOG" | jq 'select(.k == "query-begin") | .v.query + ";"' | \
      # Filter metadata queries
      grep -E -v 'DROP|DETACH|pg_catalog|hyper_database_of_table' | grep -v 'FROM STDIN' | grep -v 'FORMAT TDE'
  )
  # Extract the temporary tables for the data loading process
  CSV_FILE=$(basename "$(find -- "$DIR" -name '*.csv')")
  echo "COPY \"Extract\".\"Extract\" FROM '$CSV_FILE' (format csv, delimiter '|', null '');" > "$DIR/load.sql"
  echo "$ALL_QUERIES" | grep 'CREATE.*TABLE' | sed 's/TEMPORARY//' | jq -r >> "$DIR/load.sql"
  # And the queries
  echo "$ALL_QUERIES" | grep -v 'CREATE.*TABLE' | \
    # Filter out nonstandard tableau "public" tables
    grep -v '"public"."' | \
    # Filter out settings
    grep -E -v 'SHOW|SET' | grep -E -v "EXTERNAL STREAM" | \
    # Replace median with avg (umbra does not support median just yet)
    sed 's/MEDIAN/AVG/' | \
    # Filter out nonstandard tableau functions
    # We would need to match up brackets, do that manually for now...
    # TODO: sed 's/TABLEAU.TO_DATETIME//' | sed 's/TABLEAU.NORMALIZE_DATETIME//' \
    jq -r > "$DIR/queries.sql"

  du -hs -- "$DIR/queries.sql"
done
