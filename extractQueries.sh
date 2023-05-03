#!/usr/bin/env bash
# This script was originally from https://github.com/cwida/public_bi_benchmark

# Dependencies:
#   brew install postgresql@15
#   brew install jq
#
# mode of operation:
# - click XXX.twbx file so it opens in Tableau;
# - click on all tabs in Tableau GUI
# - run this script passing in XXX as only parameter
# - close Tableau
# - manually move twbx file into /tmp/TableauPublic/$DB/ dir
#
set -x

DB=$1;

# Switch to Tableau logs directory
if [ ! -f hyperd.log ]; then
    cd "$HOME/Documents/My Tableau Repository/Logs" || (echo "could not change to Logs directory" && exit 1)
fi
[ -f hyperd.log ] || (echo "Could not locate hyperd.log file" && exit 1)

# Determine the hyper connection parameters
export PGHOST=$(grep -F -a 'no-password' hyperd.log  | tail -1 | jq '.v."listen-connection".value' | \
  sed 's/tab.domain:\/\///' | sed 's/domain\/auto//');
export PGPORT=$(grep -F -a 'no-password' hyperd.log  | tail -1 | jq '.pid');

# Extract the queries
grep -E -a -e CREATE -e SELECT hyperd.log | \
  grep -F -a -v "FROM pg" | \
  grep -F -a -v SCHEMAS_NAME | \
  sed 's/"query-trunc":/"query":/g' | \
  awk -F '"query":' '{ for(i=1;i<=NF;i++) if (match($i,"\"CREAT") || match($i, "\"SELECT")) print $i}' | \
  sed 's/"//' | \
  sed 's/Extract (Extract.Extract)/Extract/g' | \
  sed 's/\\\"Extract\\\".\\\"Extract\\\"\\\"E/\\\"E/g' | \
  awk -F FOR '{ if (p1!=$1) print p; p=$0;p1=$1} END { if (match(p,"SELECT")) print p}' | \
  awk '{ if (match($0,"CREATE TEMP EXTERNAL TABLE \\\\\"")) n++; gsub("\\\\\"Extract\\\\\"","\\\"Extract" n "\\\"", $0); print $0 }' | sed 's/\\\"/"/g'| sed 's/\\n/ /g' > /tmp/t;
mkdir -p /tmp/TableauPublic/"$DB";
grep -E -a -e "^SELECT" /tmp/t | \
  grep -F -a -v "'::text) AS" | \
  sed 's/FROM TABLEAU.NORMALIZE_DATETIME(/FROM /g' | \
  sed 's/)) AS BIGINT OR NULL/) AS BIGINT/g' | \
  sed 's/AS BIGINT OR NULL/AS BIGINT/g' | \
  sed 's/NULLS FIRST//g' | \
  sort | uniq > /tmp/TableauPublic/"$DB"/queries.sql;

NUM_QUERIES=$(wc -l /tmp/TableauPublic/"$DB"/queries.sql)
echo "Extracted $NUM_QUERIES queries"

# Extract the tables
CREATE_STATEMENTS=$(grep -E -a -e "^CREATE" /tmp/t)
for create in $CREATE_STATEMENTS; do
  echo "$create" | awk '{ print $5 }'
done
grep -E -a -e "^CREATE" /tmp/t | \
  awk 'BEGIN{ print "\\a";print "\\f ||"}{
  d=$5;
  sub("Extract","Dummy",d);
  print $0 ";";
  print "create temp table " d as select * from " $5 " where false;";
  print "\\d " d;
  print "\\o /tmp/TableauPublic/'$DB'/" $5 ".csv";
  print "select * from " $5 ";";
  print "\\o"}' | \
  /usr/local/opt/postgresql@15/bin/psql -U tableau_internal_user \
      > /tmp/TableauPublic/"$DB"/load.stdout \
     2> /tmp/TableauPublic/"$DB"/load.err;
sed 's/||/|/g' /tmp/TableauPublic/"$DB"/load.stdout | \
  sed 's/ "pg_temp./|pg_temp|"/' | \
  grep -F -a -v 'Column|Type|Collation|Nullable|Default' | \
  grep -F -a -v 'utput format is unaligned' | \
  grep -F -a -v 'ield separator is' | \
  grep -E -a -v -e "^CREATE" | \
  awk -F "|" '{ if ($1 == "Table" && $2 == "pg_temp") { if (t != "") printf "\n);\n"; l=""; t=$3; sub("Dummy","Extract",t); printf "CREATE TABLE %s(\n   ",t } else { sub("text","varchar",$2); sub("double precision","double",$2); printf "%s", l "\"" $1 "\" " $2; l=",\n   "}}END{printf "\n);\n"}' \
  > /tmp/TableauPublic/"$DB"/tables.sql;
mv hyperd.log log.txt /tmp/TableauPublic/"$DB"/

# issues
# - still some TABLEAU-specific datatime functions spotted that probably should be replaced by CAST
# - tables and columns get names with spaces, slashes and dots. This may not be allowed in all systems. Sanitize
# basic sanitize idea (but is not enough..)
# egrep -v -e '^);' tables.sql | egrep -v -e '^CREATE' | awk '{ s=$1;gsub("\\\.","_",s); print "s/"$1"/"s"/g"}' t > /tmp/tt