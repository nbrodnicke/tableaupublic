from pathlib import Path
import sys
import os
import json
import glob
import matplotlib.pyplot as plt
import numpy as np

def ascii_visualizer(l, directory):
    for table_number, table_entry in enumerate(l):
        table_directory = os.path.join(directory, f'table_{table_number + 1}')
        if not os.path.exists(table_directory):
            os.makedirs(table_directory)
        tuple_count = table_entry[0]
        datatype_dictionary = table_entry[1]
        text_dictionary = datatype_dictionary.get('TEXT', None)
        if text_dictionary is None:
            break
        occurrences_count = text_dictionary['occurrences']
        pure_ascii_columns = text_dictionary['ASCII columns']
        non_ascii_columns = occurrences_count - pure_ascii_columns
        total_count = tuple_count * occurrences_count
        non_ascii_count = text_dictionary['Non-ASCII count']
        non_ascii_percentage = (non_ascii_count / total_count) * 100
        plt.clf()
        x_values = ['ASCII-Characters only', 'Non-ASCII Characters included']
        y_values = [pure_ascii_columns, non_ascii_columns]
        plt.bar(x_values, y_values, color='blue')
        plt.xlabel('String-Columns divided by if they contain only ASCII-Characters')
        plt.ylabel('Column Quantity')
        plt.title(f"Table {table_number + 1} contains {total_count} Strings.\n {non_ascii_count} ({non_ascii_percentage:.2f}%) of those contain Non-ASCII Characters.")
        target_file = os.path.join(table_directory, f'ascii.png')
        plt.savefig(target_file)

def string_visualizer(l, directory):
    for table_number, list_entry in enumerate(l):
        str_directory = os.path.join(directory, f'table_{table_number + 1}', f'Stringlengths')
        if not os.path.exists(str_directory):
            os.makedirs(str_directory)
        greatest_strlen_overall = -1
        x_values_overall = []
        y_values_overall = []
        for attribute, length_dictionary in list_entry[2].items():
            greatest_item = length_dictionary.popitem()
            greatest_strlen = greatest_item[0]
            greatest_value = greatest_item[1]
            null_values = 0
            not_just_null_values = True
            if greatest_strlen == 'null':
                null_values = greatest_value
                try:
                    greatest_item = length_dictionary.popitem()
                    greatest_strlen = greatest_item[0]
                    greatest_value = greatest_item[1]
                except KeyError as e:
                    print(f'Das Attribut {attribute} in Table {table_number + 1} hat ausschliesslich null-values.')
                    not_just_null_values = False
            greatest_strlen_int = int(greatest_strlen)

            if greatest_strlen_int > greatest_strlen_overall:
                for length in range(greatest_strlen_overall + 1, greatest_strlen_int):
                    x_values_overall.append(length)
                    y_values_overall.append(0)
                x_values_overall.append(greatest_strlen_int)
                y_values_overall.append(0)
                greatest_strlen_overall = greatest_strlen_int
            x_values = list(range(0, greatest_strlen_int + 1))
            y_values = [null_values]
            y_values_overall[0] += null_values
            for i in range(1, greatest_strlen_int):
                value_for_strlen = length_dictionary.get(str(i), 0)
                y_values.append(value_for_strlen)
                y_values_overall[i] += value_for_strlen
            if not_just_null_values:
                y_values.append(greatest_value)
                y_values_overall[greatest_strlen_int] += greatest_value

            plt.clf()
            plt.bar(x_values, y_values, color='blue')
            plt.xlabel('String-Lengths')
            plt.ylabel('Occurrences of Strings')
            plt.title(f'Distribution of Attribute {attribute}')
            target_file = os.path.join(str_directory, f'{attribute}.png')
            plt.savefig(target_file)

        plt.clf()
        plt.bar(x_values_overall, y_values_overall, color='blue')
        plt.xlabel('String-Lengths')
        plt.ylabel('Occurrences of Strings')
        plt.title(f'Distribution of Strings in Table {table_number + 1}')
        target_file = os.path.join(str_directory, 'all_attributes.png')
        plt.savefig(target_file)

def datatypes_visualizer(list, directory):
    plt.clf()
    for table_number, table_entry in enumerate(list):
        table_directory = os.path.join(directory, f'table_{table_number + 1}')
        if not os.path.exists(table_directory):
            os.makedirs(table_directory)
        tuple_count = int(table_entry[0])
        datatypes_count = len(table_entry[1])
        bottom = np.zeros(datatypes_count)
        value_types = {
            "Not Null": np.array([]),
            "Null": np.array([])
        }
        width = 2 / datatypes_count
        fig, ax = plt.subplots()
        datatypes = []
        for datatype, dictionary in table_entry[1].items():
            total_count = int(dictionary['occurrences']) * tuple_count
            null_count = int(dictionary['null-values'])
            null_percentage = (null_count / total_count) * 100
            value_types["Not Null"] = np.append(value_types["Not Null"], total_count - null_count)
            value_types["Null"] = np.append(value_types["Null"], null_count)
            datatypes.append(f"{datatype}\n{null_percentage:.1f}% null")

        for boolean, value_type in value_types.items():
            p = ax.bar(datatypes, value_type, width, label=boolean, bottom=bottom)
            bottom += value_type

        werte = value_types["Not Null"] + value_types["Null"]
        gesamtsumme = sum(werte)
        for i, wert in enumerate(werte):
            prozentwert = (wert / gesamtsumme) * 100
            plt.text(i, wert, f'{prozentwert:.1f}%', ha='center', va='bottom')

        ax.text(0.5, 1.08, "Number of Values", transform=ax.transAxes, ha='center', fontsize=14)
        ax.legend(loc="upper right")

        target_file = os.path.join(table_directory, f"datatypes.png")

        plt.savefig(target_file)
            
def tables_visualizer(list, directory):
    plt.clf()
    workbook_tables = []
    workbook_values = []
    workbook_column_counts = []
    for i, table_entry in enumerate(list):
        workbook_tables.append(f'{i + 1}')
        tuple_count = table_entry[0]
        column_count = 0
        for entry in table_entry[1].values():
            column_count += int(entry['occurrences'])
        workbook_column_counts.append(column_count)
        value_count = tuple_count * column_count
        workbook_values.append(value_count)
    plt.bar(workbook_tables, workbook_values, color='blue')
    plt.xlabel('Table')
    plt.ylabel('Total number of values')
    plt.title('Number of total values per table')
    target_file = os.path.join(directory, 'table_values.png')
    plt.savefig(target_file)
    plt.clf()
    plt.bar(workbook_tables, workbook_column_counts, color='blue')
    plt.xlabel('Table')
    plt.ylabel('Number of Columns')
    plt.title('Number of columns per table', y=1.08)
    for i, column_count in enumerate(workbook_column_counts):
        plt.text(i, column_count, f'{column_count}', ha='center', va='bottom')
    target_file = os.path.join(directory, 'columns_per_table.png')
    plt.savefig(target_file)

if len(sys.argv) > 1:
    workbook_directory = Path(sys.argv[1])
    if not os.path.exists(workbook_directory):
        raise FileNotFoundError(f"Das übergebene Verzeichnis {workbook_directory} existiert leider nicht.")
else:
    raise TypeError("Bitte übergeben Sie das Verzeichnis eines Workbooks, in dem sich die Datei analysis.json befindet.")
    
json_files = glob.glob(os.path.join(workbook_directory, '*.json'))
if json_files:
    analysis_file = json_files[0]
else:
    raise FileNotFoundError(f"Das übergebene Verzeichnis {workbook_directory} enthält leider keine JSON-Datei mit den Analyseergebnissen.")

with open(analysis_file, 'r') as json_file:
    table_list = json.load(json_file)

graphics_directory = os.path.join(workbook_directory, 'Graphics')
if not os.path.exists(graphics_directory):
    os.makedirs(graphics_directory)

tables_visualizer(table_list, graphics_directory)
datatypes_visualizer(table_list, graphics_directory)
string_visualizer(table_list, graphics_directory)
ascii_visualizer(table_list, graphics_directory)
