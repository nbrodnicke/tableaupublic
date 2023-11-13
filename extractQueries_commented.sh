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
# Die folgenden vier Zeilen switchen zum Directory, in dem die hyperd.log File liegt und werfen einen Fehler, wenn
# entweder das Verzeichnis oder die Datei nicht existiert
if [ ! -f hyperd.log ]; then
    cd "$HOME" || (echo "could not change to Logs directory" && exit 1)
fi
[ -f hyperd.log ] || (echo "Could not locate hyperd.log file" && exit 1)

# Determine the hyper connection parameters
# PGHOST enthält den .v."listen-connection".value Wert, der aus der 'no-password' Zeile der hyperd.log stammt
export PGHOST=$(grep -F -a 'no-password' hyperd.log  | tail -1 | jq '.v."listen-connection".value' | \
  sed 's/tab.domain:\/\///' | sed 's/domain\/auto//');
# PGPORT enthält den Wert von pid, der aus der 'no-password' Zeile der hyperd.log stammt
export PGPORT=$(grep -F -a 'no-password' hyperd.log  | tail -1 | jq '.pid');

# Fragen: 
# In Zeile 51 und in allen anderen awk-Befehlen: Wohin wird geprinted? Der Print wird als Eingabe des nächsten Befehls verwendet
# In Zeile 57 und so bei den anderen sed-Befehlen: Wird '\\\"Extract\\\".\\\"Extract\\\"\\\"E' ersetzt oder '\"Extract\".\"Extract\"\"E'?
# In Zeile 68: Gibt es überhaupt noch unterschiedliche Zeilen in der /tmp/t, nachdem wir am Ende der Zeile 64 alle Zeilenumbrüche durch Leerzeichen ersetzt haben? Ja, denn es werden tatsächlich nur die Zeichenfolgen, die Zeilenumbrüche symbolisieren, ersetzt.
# pg: Postgres Table Übersicht, Metadaten rausfischen, SCHEMAS_NAME auch

# Extract the queries
# Die erste Zeile wählt aus hyperd.log alle Zeilen aus, die CREATE oder SELECT enthalten
grep -E -a -e CREATE -e SELECT hyperd.log | \
  # Es werden die Zeilen herausgefiltert, die FROM pg enthalten (Wahrscheinlich wegen des Leerzeichens in Anführungszeichen)
  grep -F -a -v "FROM pg" | \
  # Es werden die Zeilen herausgefiltert, die SCHEMAS_NAME enthalten
  grep -F -a -v SCHEMAS_NAME | \
  # Die Zeichenfolge "query-trunc": wird durch die Zeichenfolge "query": ersetzt
  sed 's/"query-trunc":/"query":/g' | \
  # awk teilt jede Zeile in Felder auf, wobei '"query":' als Trennzeichen verwendet wird
  # Alle Felder, die CREATE oder SELECT enthalten, werden ausgegeben
  awk -F '"query":' '{ for(i=1;i<=NF;i++) if (match($i,"\"CREAT") || match($i, "\"SELECT")) print $i}' | \
  # Es werden die ersten doppelten Anführungszeichen jeder Zeile entfernt
  sed 's/"//' | \
  # Vorkommen von 'Extract (Extract.Extract)' werden durch 'Extract' ersetzt
  sed 's/Extract (Extract.Extract)/Extract/g' | \
  # Vorkommen von '\"Extract\".\"Extract\"\"E' werden durch '\"E' ersetzt
  sed 's/\\\"Extract\\\".\\\"Extract\\\"\\\"E/\\\"E/g' | \
  # Es werden alle Zeilen ausgegeben, deren Teil vor dem FOR anders ist als bei der letzten Zeile
  # Wenn die allerletzte Zeile ein SELECT enthält, wird sie ebenfalls ausgegeben
  awk -F FOR '{ if (p1!=$1) print p; p=$0;p1=$1} END { if (match(p,"SELECT")) print p}' | \
  # wird auf jede Zeile angewendet; Wenn die Zeile CREATE TEMP EXTERNAL TABLE \\" enthält, wird n erhöht;
  # Der Ausdruck '\\"Extract\\"' wird durch den Ausdruck '\"Extract n \"' ersetzt, wobei n die Nummer des Vorkommens einer Zeile  mit CREATE TEMP EXTERNAL TABLE ist; dann wird die Zeile ausgegeben
  # Anschliessend werden alle Vorkommen von \" durch " ersetzt und alle Zeilenumbrüche werden durch Leerzeichen ersetzt
  # Dann wird alles in die temporäre Datei /tmp/t geschrieben
  awk '{ if (match($0,"CREATE TEMP EXTERNAL TABLE \\\\\"")) n++; gsub("\\\\\"Extract\\\\\"","\\\"Extract" n "\\\"", $0); print $0 }' | sed 's/\\\"/"/g'| sed 's/\\n/ /g' > /tmp/t;
mkdir -p /tmp/TableauPublic/"$DB";
# Es werden alle Zeilen ausgewählt, die mit einem SELECT beginnen
grep -E -a -e "^SELECT" /tmp/t | \
  # Es kommen nur die Zeilen durch, die nicht '::text) AS enthalten
  grep -F -a -v "'::text) AS" | \
  # Alle Vorkommen von FROM TABLEAU.NORMALIZE_DATETIME( werden durch FROM ersetzt
  sed 's/FROM TABLEAU.NORMALIZE_DATETIME(/FROM /g' | \
  # Alle Vorkommen von )) AS BIGINT OR NULL werden durch ) AS BIGINT ersetzt
  sed 's/)) AS BIGINT OR NULL/) AS BIGINT/g' | \
  # Alle Vorkommen von AS BIGINT OR NULL werden durch AS BIGINT ersetzt
  sed 's/AS BIGINT OR NULL/AS BIGINT/g' | \
  # Alle Vorkommen von NULLS FIRST werden einfach gelöscht
  sed 's/NULLS FIRST//g' | \
  # Die Zeilen werden alphabetisch sortiert und jede Zeile wird ein einziges Mal (ohne Duplikate) in queries.sql geschrieben
  sort | uniq > /tmp/TableauPublic/"$DB"/queries.sql;

# Hier wird die Anzahl verschiedener Queries auf dem Bildschirm ausgegeben
NUM_QUERIES=$(wc -l /tmp/TableauPublic/"$DB"/queries.sql)
echo "Extracted $NUM_QUERIES queries"

# Fragen:
# Wohin wird in Zeile 98 $5 geprinted?
# Ist es nicht schwierig, dass wir in Zeile 109 eine ungerade Anzahl doppelter Anführungszeichen im print Statement haben? Wie lässt sich das testen? Kann ich hier nochmal mehr Workbooks checken und dann nach Fehlermeldungen schauen?
# Was passiert eigentlich in Zeile 109? Hier wird eine Query geprinted, die höchstwahrscheinlich als Eingabe für die Datenbankanwendung
# Sind die Zeilen 105 bis 113 die Eingabe für die postgre Datenbankanwendung?

# Extract the tables
# Es werden alle Zeilen ausgewählt, die mit CREATE beginnen
CREATE_STATEMENTS=$(grep -E -a -e "^CREATE" /tmp/t)
for create in $CREATE_STATEMENTS; do
  echo "$create" | awk '{ print $5 }'
done
# Es werden wieder alle Zeilen ausgewählt, die mit CREATE beginnen
grep -E -a -e "^CREATE" /tmp/t | \
  # Es wird \a *Zeilenumbruch* \f || auf dem Bildschirm ausgegeben
  # Es wird das fünfte Wort in d gespeichert und wenn es Extract ist, wird es durch Dummy ersetzt
  # Es wird die aktuelle Eingabezeile gefolgt von einem ; ausgegeben
  # Die Standardausgabe des PostgreSQL-Client wird in wird in /tmp/TableauPublic/DB/load.err umgeleitet
  awk 'BEGIN{ print "\\a";print "\\f ||"}{
  d=$5;
  sub("Extract","Dummy",d);
  print $0 ";";
  print "create temp table " d " as select * from " $5 " where false;";
  print "\\d " d;
  print "\\o /tmp/TableauPublic/'$DB'/" $5 ".csv";
  print "select * from " $5 ";";
  print "\\o"}' | \
  /usr/local/opt/postgresql@15/bin/psql -U tableau_internal_user \
      > /tmp/TableauPublic/"$DB"/load.stdout \
     2> /tmp/TableauPublic/"$DB"/load.err;

# Es werden alle Vorkommen von || durch | ersetzt
# pg_temp. wird durch |pg_temp| ersetzt
# Es werden alle CREATE Statements herausgefiltert und die, mit den Attributen von Zeile 125 bis Zeile 128
# Die Zeilen werden nach dem Trennzeichen | aufgeteilt
# Wenn das erste Wort Table ist und das zweite pg_temp, wird die Zeile behandelt
# Am Ende werden hyperd.log und log.txt in /tmp/TableauPublic/$DB/ verschoben

sed 's/||/|/g' /tmp/TableauPublic/"$DB"/load.stdout | \
  sed 's/ "pg_temp./|pg_temp|"/' | \
  grep -F -a -v 'Column|Type|Collation|Nullable|Default' | \
  grep -F -a -v 'utput format is unaligned' | \
  grep -F -a -v 'ield separator is' | \
  grep -E -a -v -e "^CREATE" | \
  awk -F "|" '{ if ($1 == "Table" && $2 == "pg_temp") { if (t != "") printf "\n);\n"; l=""; t=$3; sub("Dummy","Extract",t); printf "CREATE TABLE %s(\n   ",t } else { sub("text","varchar",$2); sub("double precision","double",$2); printf "%s", l "\"" $1 "\" " $2; l=",\n   "}}END{printf "\n);\n"}' \
  > /tmp/TableauPublic/"$DB"/tables.sql;
mv hyperd.log log.txt /tmp/TableauPublic/"$DB"/ 

echo $DB

# Fragen:
# Welcher Wert steht von Anfang an in Zeile 133 in t? Welcher Wert steht in l?

# issues
# - still some TABLEAU-specific datatime functions spotted that probably should be replaced by CAST
# - tables and columns get names with spaces, slashes and dots. This may not be allowed in all systems. Sanitize
# basic sanitize idea (but is not enough..)
# egrep -v -e '^);' tables.sql | egrep -v -e '^CREATE' | awk '{ s=$1;gsub("\\\.","_",s); print "s/"$1"/"s"/g"}' t > /tmp/tt