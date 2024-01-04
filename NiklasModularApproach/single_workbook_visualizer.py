from pathlib import Path
import sys
import os
import json
import glob
import matplotlib.pyplot as plt
import numpy as np

def string_visualizer(l, directory):
    for table_number, list_entry in enumerate(l):
        str_directory = os.path.join(directory, f'Stringlengths_Table_{table_number + 1}')
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
                    print(f'Das Attribut {attribute} in Table {table_number} hat ausschliesslich null-values.')
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
            print(f"Datatype: {datatype}.")
            print(f"Dictionary: {dictionary}.")
            datatypes.append(datatype)
            total_count = int(dictionary['occurrences']) * tuple_count
            null_count = int(dictionary['null-values'])
            value_types["Not Null"] = np.append(value_types["Not Null"], total_count - null_count)
            value_types["Null"] = np.append(value_types["Null"], null_count)

        for boolean, value_type in value_types.items():
            p = ax.bar(datatypes, value_type, width, label=boolean, bottom=bottom)
            bottom += value_type

        werte = value_types["Not Null"] + value_types["Null"]
        gesamtsumme = sum(werte)
        for i, wert in enumerate(werte):
            prozentwert = (wert / gesamtsumme) * 100
            plt.text(i, wert, f'{prozentwert:.1f}%', ha='center', va='bottom')

        ax.set_title("Number of Values")
        ax.legend(loc="upper right")

        target_file = os.path.join(directory, f"table{table_number + 1}.png")

        plt.savefig(target_file)
            


def table_visualizer(list, directory):
    plt.clf()
    workbook_categories = []
    workbook_values = []
    workbook_column_counts = []
    workbook_widths = []
    workbook_value_counts = []

    for i, table_entry in enumerate(list):
        column_count = 0
        tuple_count = table_entry[0]
        workbook_values.append(tuple_count)
        for entry in table_entry[1].values():
            column_count += int(entry['occurrences'])
        workbook_column_counts.append(column_count)
        workbook_categories.append(f"Table {i + 1}\n{column_count} Columns")
        value_count = column_count * tuple_count
        workbook_value_counts.append(value_count)

    total_columns = sum(workbook_column_counts)
    for count in workbook_column_counts:
        width = count / total_columns
        workbook_widths.append(width)

    bars = plt.bar(workbook_categories, workbook_values, width=workbook_widths, color='blue')

    for bar, value in zip(bars, workbook_value_counts):
        plt.text(bar.get_x() + bar.get_width() / 2, bar.get_height() / 2, f"{value} Werte",
                ha='center', va='center', rotation='vertical')

    plt.title('Tabellen des Workbooks')
    plt.ylabel('Anzahl Tupel')

    target_file = os.path.join(directory, 'tables.png')

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

# table_visualizer(table_list, graphics_directory)
# datatypes_visualizer(table_list, graphics_directory)
string_visualizer(table_list, graphics_directory)
