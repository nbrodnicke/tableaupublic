#!/bin/env python
import argparse
import csv
from pathlib import Path
from tableauhyperapi import HyperProcess, Telemetry, Connection, TableName, Nullability


def fix_column_type(column_type: str):
    if str(column_type) == 'BIG_INT':
        return 'BIGINT'
    return column_type


def convert_to_csv(hyper_database: Path):
    # Rename path with a .csv extension in the directory of the tde file
    schema_file = hyper_database.with_name(hyper_database.stem + '.sql')
    csv_file = hyper_database.with_name(hyper_database.stem + '.csv')

    print(f"Converting {hyper_database} to {csv_file}...")
    with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
        with Connection(endpoint=hyper.endpoint, database=hyper_database) as connection:
            with open(schema_file, 'w') as schema:
                # The table names in the "Extract" schema (the default schema).
                table_names = connection.catalog.get_table_names(schema="Extract")
                for table in table_names:
                    table_definition = connection.catalog.get_table_definition(name=table)
                    print(f"CREATE TABLE {table} (", file=schema)
                    for i, column in enumerate(table_definition.columns):
                        print(f"{column.name} {fix_column_type(column.type)}"
                              f"{' not null' if column.nullability == Nullability.NOT_NULLABLE else ''}",
                              file=schema, end='')
                        if i != len(table_definition.columns) - 1:
                            print(',', file=schema)
                    print("\n)", file=schema)

            with open(csv_file, 'w') as csv_out:
                csv_writer = csv.writer(csv_out, delimiter='|')
                table_name = TableName("Extract", "Extract")
                rows = connection.execute_list_query(query=f"SELECT * FROM {table_name}")
                csv_writer.writerows(rows)


if __name__ == '__main__':
    argparser = argparse.ArgumentParser(description="Script to convert a Hyper file to a CSV file.")
    argparser.add_argument("input_hyper_path", type=Path,
                           help="The input Hyper file path that will be converted to a CSV file.")
    args = argparser.parse_args()

    input_hyper_path = Path(args.input_hyper_path)
    if not input_hyper_path.exists():
        raise Exception(f"{input_hyper_path} not found")

    convert_to_csv(input_hyper_path)
