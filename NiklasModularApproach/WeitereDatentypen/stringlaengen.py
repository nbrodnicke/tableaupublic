from pathlib import Path
import sys
from tableauhyperapi import HyperProcess, Connection, TableDefinition, SqlType, Telemetry, Inserter, CreateMode

if len(sys.argv) > 1:
    input_hyper_path = Path(sys.argv[1])
else:
    raise TypeError("Es müssen ein Pfad zur .sql Datei und ein Pfad zur Hyper-File übergeben werden.")

def string_lengths(attribute_name, hyper_database, table_nmb):
    with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
        with Connection(endpoint=hyper.endpoint, database=hyper_database) as connection:
            for schema in connection.catalog.get_schema_names():
                if str(schema.name) == '"Extract"':
                    table_names = connection.catalog.get_table_names(schema=schema)
                    try:
                        attribute_name = '"' + attribute_name + '"'
                        with connection.execute_query(f"SELECT LENGTH({attribute_name}) as string_length, COUNT(*) AS anzahl FROM {table_names[table_nmb]} GROUP BY LENGTH({attribute_name}) ORDER BY string_length") as result:
                            print(result)
                            rows = dict(result)
                            print(rows)
                            '''total_result = 0
                            for row in rows:
                                print(f'String-Length: {row[0]}, Count: {row[1]}.')
                                total_result += row[1]
                            print(f'Total Count: {total_result}.')'''
                    except Exception as e:
                        print("Query failed!")
                        print(e)
                        return 42 # Hier gegebenenfalls einen Fallback programmieren, der manuell schaut, wie viele Null-Werte es gibt
                    
string_lengths("track_name", input_hyper_path, 0)