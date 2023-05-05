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
  cat "$LOG" | jq 'select(.k == "query-begin") | .v.query + ";"' -r \
    > "$DIR/$DIR.sql"
  du -hs -- "$DIR/$DIR.sql"
done
