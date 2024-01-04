from pathlib import Path
import sys
from tableauhyperapi import HyperProcess, Connection, TableDefinition, SqlType, Telemetry, Inserter, CreateMode

if len(sys.argv) > 1:
    input_hyper_path = Path(sys.argv[1])
else:
    raise TypeError("Es müssen ein Pfad zur .sql Datei und ein Pfad zur Hyper-File übergeben werden.")

def ascii_count(attribute_name, hyper_database, table_nmb):
    with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
        with Connection(endpoint=hyper.endpoint, database=hyper_database) as connection:
            for schema in connection.catalog.get_schema_names():
                if str(schema.name) == '"Extract"':
                    table_names = connection.catalog.get_table_names(schema=schema)
                    try:
                        attribute_name = '"' + attribute_name + '"'
                        with connection.execute_query(f"SELECT COUNT(*) FROM {table_names[table_nmb]} WHERE {attribute_name} ~ '[^\\x00-\\x7F]'") as result:
                            rows = list(result)
                            print(rows[0][0])
                            #for row in rows:
                            #    print(row)
                    except Exception as e:
                        print("Query failed!")
                        print(e)
                        return 42 # Hier gegebenenfalls einen Fallback programmieren, der manuell schaut, wie viele Null-Werte es gibt
                    
ascii_count("State", input_hyper_path, 0)