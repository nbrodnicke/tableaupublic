#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

# Convert old tde files to hyper files
find . -type f -name '*.tde' -exec \
  ./tde2hyper.py {} \;

# Export hyper files as CSV
find . -type f -name '*.hyper' -exec \
  ./hyper2csv.py {} \;

# Extract the SQL queries from the log
find . -type f -name 'hyperd.log' -print0 | while IFS= read -r -d '' LOG; do
  DIR=$(dirname "$LOG" | cut -c 3-)
  ALL_QUERIES=$(
    cat "$LOG" | jq 'select(.k == "query-begin") | .v.query + ";"' | \
      # Filter metadata queries
      grep -E -v 'DROP|DETACH|pg_catalog|hyper_database_of_table' | grep -v 'FROM STDIN' | grep -v 'FORMAT TDE'
  )
  # Extract the temporary tables for the data loading process
  CSV_FILE=$(find "$LOG" -name '*.csv')
  echo "COPY \"Extract\".\"Extract\" FROM '$LOG/$CSV_FILE' (format csv, delimiter '|', null '');" > "$DIR/load.sql"
  echo "$ALL_QUERIES" | grep 'CREATE.*TABLE' | jq -r >> "$DIR/load.sql"
  # And the queries
  echo "$ALL_QUERIES" | grep -v 'CREATE.*TABLE' | jq -r | \
    # Filter out nonstandard tableau functions
    sed 's/TABLEAU.TO_DATETIME//' | sed 's/TABLEAU.NORMALIZE_DATETIME//' \
    > "$DIR/queries.sql"

  du -hs -- "$DIR/queries.sql"
done
