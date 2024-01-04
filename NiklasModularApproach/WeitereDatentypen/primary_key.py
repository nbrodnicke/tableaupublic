from pathlib import Path
from tableauhyperapi import HyperProcess, Connection, TableDefinition, SqlType, Telemetry, Inserter, CreateMode
import os
import sys
import subprocess
import shutil

if len(sys.argv) > 1:
    input_hyper_path = Path(sys.argv[1])

with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
    with Connection(endpoint=hyper.endpoint, database=input_hyper_path) as connection:
        for schema in connection.catalog.get_schema_names():
            if str(schema.name) == '"Extract"':
                table_names = connection.catalog.get_table_names(schema=schema)
                for table in table_names:
                    table_definition = connection.catalog.get_table_definition(name=table)
                    if table_definition is not None:
                        primary_keys = [col.name for col in table_definition.columns if col.is_primary_key]
                        print(f"Primary Key columns in table {table}: {primary_keys}")