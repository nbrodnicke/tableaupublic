from tableauhyperapi import HyperProcess, Connection, TableDefinition, SqlType, Telemetry, Inserter, CreateMode
from pathlib import Path
import sys

if len(sys.argv) > 1:
    input_hyper_path = Path(sys.argv[1])
else:
    raise TypeError("Es muss ein Pfad zur Hyper-File übergeben werden.")

def define_primarykey(hyper_database: Path):
    # Rename path with a .csv extension in the directory of the tde file
    schema_file = hyper_database.with_name(hyper_database.stem + '.sql')

    #print(f"Converting {hyper_database} to {csv_file}...")
    with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
        with Connection(endpoint=hyper.endpoint, database=hyper_database) as connection:
            for schema in connection.catalog.get_schema_names():
                table_names = connection.catalog.get_table_names(schema=schema)
                #print(table_names)
                for counter, table in enumerate(table_names):
                    table_definition = connection.catalog.get_table_definition(name=table)
                    with connection.execute_query(f"SELECT COLUMN_NAME FROM {schema}.SYSTEM_INDEXINFO WHERE TABLE_NAME = '{table}' AND PRIMARY_KEY = TRUE") as result:
                        print(result)

define_primarykey(input_hyper_path)