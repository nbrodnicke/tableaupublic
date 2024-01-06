from pathlib import Path
from tableauhyperapi import HyperProcess, Connection, TableDefinition, SqlType, Telemetry, Inserter, CreateMode
import os
import sys
import subprocess
import shutil
import json

if len(sys.argv) > 1:
    input_hyper_path = Path(sys.argv[1])

table_list = []

def fix_column_type(column_type: str):
    if str(column_type) == 'BIG_INT':
        return 'BIGINT'
    if str(column_type) == 'DOUBLE':
        return 'DOUBLE PRECISION'
    if str(column_type) == 'SMALL_INT':
        return 'SMALLINT'
    return column_type

def analyze_hyper_file(hyper_database):
    l = []
    with HyperProcess(telemetry=Telemetry.DO_NOT_SEND_USAGE_DATA_TO_TABLEAU) as hyper:
        with Connection(endpoint=hyper.endpoint, database=hyper_database) as connection:
            #for schema in connection.catalog.get_schema_names():
                #if str(schema.name) == '"Extract"':
            schema = "Extract"
            table_names = connection.catalog.get_table_names(schema=schema)
            for table in table_names:
                new_list_element = []
                table_definition = connection.catalog.get_table_definition(name=table)
                try:
                    with connection.execute_query(f"SELECT COUNT(*) FROM {table}") as tuplecount_result:
                        rows = list(tuplecount_result)
                        new_list_element.append(int(rows[0][0]))
                    new_list_element.append({})
                    new_list_element.append({})
                    for column in table_definition.columns:
                        datatype = str(fix_column_type(column.type))
                        attribute_name = str(column.name)
                        if datatype in new_list_element[1]:
                            new_list_element[1][datatype]['occurrences'] += 1
                        else:
                            new_list_element[1][datatype] = {'occurrences': 1, 'null-values': 0}
                        with connection.execute_query(f"SELECT COUNT(*) FROM {table} WHERE {attribute_name} IS NULL") as null_result:
                            null_rows = list(null_result)
                            new_list_element[1][datatype]['null-values'] += int(null_rows[0][0])
                        if datatype == 'TEXT':
                            with connection.execute_query(f"SELECT COUNT(*) FROM {table} WHERE {attribute_name} ~ '[^\\x00-\\x7F]'") as non_ascii_result:
                                ascii_rows = list(non_ascii_result)
                                non_ascii_count = int(ascii_rows[0][0])
                                if 'Non-ASCII count' in new_list_element[1][datatype]:
                                    new_list_element[1][datatype]['Non-ASCII count'] += non_ascii_count
                                    new_list_element[1][datatype]['ASCII columns'] += 1 if (non_ascii_count == 0) else 0
                                else:
                                    new_list_element[1][datatype]['Non-ASCII count'] = non_ascii_count
                                    new_list_element[1][datatype]['ASCII columns'] = 1 if (non_ascii_count == 0) else 0
                            with connection.execute_query(f"SELECT LENGTH({attribute_name}) as string_length, COUNT(*) AS anzahl FROM {table} GROUP BY LENGTH({attribute_name}) ORDER BY string_length") as result_string_lengths:
                                dictionary = dict(result_string_lengths)
                                new_list_element[2][attribute_name] = dictionary
                except Exception as e:
                    print("Query failed!")
                    print(e)
                    return 42 # Das hier nochmal refactorn
                l.append(new_list_element)
            return l

current_directory = Path(__file__).resolve().parent
file_name = os.path.basename(input_hyper_path)
directory_name = os.path.splitext(file_name)[0]
analysis_directory = "Analysen"
new_directory_path = Path(os.path.join(current_directory, analysis_directory, directory_name))
if not os.path.exists(new_directory_path):
    os.makedirs(new_directory_path)

terminal_command = f'unzip -d "{new_directory_path}" -- "{input_hyper_path}"'
subprocess.run(terminal_command, shell=True)
data_directory = new_directory_path.joinpath("Data")
hyper_files = data_directory.glob("**/*.hyper")

for hyper_file in hyper_files:
    hyper_file = shutil.move(hyper_file, new_directory_path)
    subprocess.run(["python3", "hyper2csv.py", hyper_file])

for entry in os.listdir(new_directory_path):
    full_path = os.path.join(new_directory_path, entry)
    if os.path.isdir(full_path):
        shutil.rmtree(full_path)
    else:
        if full_path.lower().endswith('.hyper'):
            table_list_hyper = analyze_hyper_file(full_path)
            table_list.extend(table_list_hyper)
        elif not full_path.lower().endswith('.sql') and not full_path.lower().endswith('.csv'):
            os.remove(full_path)

json_file = Path(os.path.join(new_directory_path, 'analysis.json'))
with open(json_file, 'w') as file:
    json.dump(table_list, file)

subprocess.run(["python3", "single_workbook_visualizer.py", new_directory_path])
