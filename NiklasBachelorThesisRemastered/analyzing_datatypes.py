# Dieses Skript schreibt für jede Tabelle eines die Datentypen plus die Grösse der Tabelle gebündelt in datentypen.txt

import sys
import re
from tableauhyperapi import HyperProcess, Connection, TableDefinition, SqlType, Telemetry, Inserter, CreateMode
from pathlib import Path

def check_count():
    with open(input_file_count, 'r') as file:
        zeilen = file.readlines()
        umgekehrte_zeilen = zeilen[::-1]
        counts = []
        for zeile in umgekehrte_zeilen:
            if not zeile.strip():
                break
            counts.append(zeile)
        counts = counts[::-1]
        return counts

def null_values(attribute_name, hyper_database, table_nmb):
    with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
        with Connection(endpoint=hyper.endpoint, database=hyper_database) as connection:
            for schema in connection.catalog.get_schema_names():
                if str(schema.name) == '"Extract"':
                    table_names = connection.catalog.get_table_names(schema=schema)
                    try:
                        attribute_name = '"' + attribute_name + '"'
                        with connection.execute_query(f"SELECT COUNT(*) FROM {table_names[table_nmb]} WHERE {attribute_name} IS NULL") as result:
                            rows = list(result)
                            return int(rows[0][0])
                    except Exception as e:
                        print("Query failed!")
                        print(e)
                        return 42 # Hier gegebenenfalls einen Fallback programmieren, der manuell schaut, wie viele Null-Werte es gibt

try:
    if len(sys.argv) > 2:
        input_file = sys.argv[1]
        input_hyper_path = Path(sys.argv[2])
    else:
        raise TypeError("Es müssen ein Pfad zur .sql Datei und ein Pfad zur Hyper-File übergeben werden.")
    
    input_file_count = 'temp/anzahl.txt'
    output_file = 'temp/datentypen.txt'

    lines = []

    with open(output_file, 'a') as output_file:
        table_number = 0
        row_counts = check_count()
        with open(input_file, 'r') as file:
            for line in file:
                clean_line = line.strip()
                lines.append(clean_line)
                if clean_line == ');':
                    table_count = row_counts[table_number]
                    filtered_lines = [l for l in lines if l.startswith('"')]
                    for filtered_line in filtered_lines:
                        match = re.search(r'"([^"]*)" (.*)', filtered_line)
                        if match:
                            datatype = match.group(2)
                            null_count = null_values(match.group(1), input_hyper_path, table_number)
                            if datatype.endswith(','):
                                datatype = datatype[:-1]
                            output_file.write(datatype + ' ' + str(table_count).rstrip() + ' ' + str(null_count) + '\n')
                    output_file.write('\n')
                    lines.clear()
                    table_number += 1
except TypeError as e:
    print(f"Fehler aufgetreten: {e}")
except FileNotFoundError as e:
    print(f"Der Pfad muss gültig sein: {e}")