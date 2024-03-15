import sys
from pathlib import Path
import os
import json
import numpy as np
import matplotlib.pyplot as plt

top_5_workbooks = {}
string_lengths = {}
datatypes_dict = {}
tables_per_workbook = {}
values_per_workbook = {}
values_per_workbook_detailed = []
tuples_per_table = {}
columns_per_table = {}
values_per_table = {}
tuples_per_workbook = {}
tuples_per_table_detailed = {}
ascii_list = [0, 0, 0, 0, {}, {}]

def add_value_to_staggered_dict(value_to_add, integer, dictionary):
    i = 0
    while True:
        if integer < 10 ** (i + 1):
            size = f'10^{i}-10^{i + 1}'
            if size in dictionary:
                dictionary[size] += value_to_add
            else:
                dictionary[size] = value_to_add
            break
        i += 1

def add_tables_per_workbook(tables):
    if tables in tables_per_workbook:
        tables_per_workbook[tables] += 1
    else: 
        tables_per_workbook[tables] = 1

def add_datatypes(table_size, datatypes):
    for datatype, dictionary in datatypes.items():
        column_count = dictionary['occurrences']
        count = column_count * table_size
        null_values = dictionary['null-values']
        if datatype in datatypes_dict:
            datatypes_dict[datatype]['occurrences'][0] += count
            datatypes_dict[datatype]['occurrences'][1] += null_values
            add_value_to_staggered_dict(column_count, table_size, datatypes_dict[datatype]['column sizes'])
            if column_count in datatypes_dict[datatype]['columns per table']:
                datatypes_dict[datatype]['columns per table'][column_count] += 1
            else:
                datatypes_dict[datatype]['columns per table'][column_count] = 1
        else:
            datatypes_dict[datatype] = {}
            datatypes_dict[datatype]['occurrences'] = [count, null_values]
            datatypes_dict[datatype]['column sizes'] = {}
            add_value_to_staggered_dict(column_count, table_size, datatypes_dict[datatype]['column sizes'])
            datatypes_dict[datatype]['columns per table'] = {}
            datatypes_dict[datatype]['columns per table'][column_count] = 1

def add_columns_per_table(tuples, datatypes):
    column_count = 0
    for dictionary in datatypes.values():
        column_count += dictionary['occurrences']
    value_count = column_count * tuples
    add_value_to_staggered_dict(1, value_count, values_per_table)
    if column_count in columns_per_table:
        columns_per_table[column_count] += 1
    else:
        columns_per_table[column_count] = 1

def handle_strings(table_size, text_dictionary):
    ascii_columns = text_dictionary['ASCII columns']
    column_count = text_dictionary['occurrences']
    non_ascii_columns = column_count - ascii_columns
    string_count = table_size * column_count
    ascii_list[0] += ascii_columns
    ascii_list[1] += non_ascii_columns
    ascii_list[2] += string_count
    ascii_list[3] += text_dictionary['Non-ASCII count']
    add_value_to_staggered_dict(ascii_columns, table_size, ascii_list[4])
    add_value_to_staggered_dict(non_ascii_columns, table_size, ascii_list[5])

def visualize_tuples_per_table(dir, tuples_dictionary):
    plt.clf()
    tables_total = sum(value for value in tuples_dictionary.values())
    categories = []
    values = []
    for i in range(0, 8):
        categories.append(f'10^{i}\n-10^{i + 1}')
        values.append(tuples_dictionary.get(f'10^{i}-10^{i + 1}', 0))
    plt.bar(categories, values, color='blue')
    plt.ylabel('Count of Tables with so many Tuples')
    plt.title('Tuples per Table')
    plt.xticks(fontsize=8)
    for i, value in enumerate(values):
        percentage = (value / tables_total) * 100
        plt.text(i, value, f'{percentage:.1f}%', ha='center', va='bottom')
    target_file = os.path.join(dir, 'tuples_per_table.png')
    plt.savefig(target_file)

def visualize_tuples_per_workbook(dir, tuples_per_workbook_dict):
    plt.clf()
    total_workbooks = sum(workbooks for workbooks in tuples_per_workbook_dict.values())
    categories = []
    values = []
    for i in range(0, 10):
        categories.append(f'10^{i}\n-10^{i + 1}')
        workbooks = tuples_per_workbook_dict.get(f'10^{i}-10^{i + 1}', 0)
        percentage = (workbooks / total_workbooks) * 100
        values.append(percentage)
    plt.bar(categories, values, color='blue')
    for i, percentage in enumerate(values):
        plt.text(i, percentage, f'{percentage:.1f}%', ha='center', va='bottom')
    plt.title('Tuples per workbook')
    plt.ylabel('% of workbooks')
    plt.xlabel('Tuples')
    plt.xticks(fontsize=6)
    target_file = os.path.join(dir, 'tuples_per_workbook.png')
    plt.savefig(target_file)

def visualize_values_per_table(dir, values_per_table_dict):
    plt.clf()
    total_tables = sum(tables for tables in values_per_table_dict.values())
    categories = []
    values = []
    for i in range(0, 10):
        categories.append(f'10^{i}\n-10^{i + 1}')
        tables = values_per_table_dict.get(f'10^{i}-10^{i + 1}', 0)
        percentage = (tables / total_tables) * 100
        values.append(percentage)
    plt.bar(categories, values, color='blue')
    for i, percentage in enumerate(values):
        plt.text(i, percentage, f'{percentage:.1f}%', ha='center', va='bottom')
    plt.title('Values per Table')
    plt.ylabel('% of Tables')
    plt.xlabel('Values')
    plt.xticks(fontsize=6)
    target_file = os.path.join(dir, 'values_per_table.png')
    plt.savefig(target_file)

def visualize_ascii_strings(dir, ascii_list):
    plt.clf()
    total_string_columns = ascii_list[0] + ascii_list[1]
    non_ascii_percentage = (ascii_list[3] / ascii_list[2]) * 100
    categories = ['pure ASCII', 'non ASCII']
    values = [(ascii_list[0] / total_string_columns) * 100, (ascii_list[1] / total_string_columns) * 100]
    plt.bar(categories, values, color='blue')
    plt.title(f'How many String Columns contain Non-ASCII Characters?\n{non_ascii_percentage:.2f}% of Strings contain Non-ASCII Characters')
    plt.ylabel('% of Columns')
    target_file = os.path.join(dir, 'ascii_strings.png')
    plt.savefig(target_file)

def visualize_values_per_workbook(dir, values_dictionary):
    plt.clf()
    categories = []
    values = []
    for i in range(0, 10):
        categories.append(f'10^{i}\n-10^{i + 1}')
        values.append(values_dictionary.get(f'10^{i}-10^{i + 1}', 0))
    plt.bar(categories, values, color='blue')
    plt.ylabel('Count of Workbooks with so many Values')
    plt.title('Quantity of Values per Workbook')
    total_values = sum(values)
    for i, value in enumerate(values):
        percentage = (value / total_values) * 100
        plt.text(i, value, f'{percentage:.1f}%', ha='center', va='bottom')
    target_file = os.path.join(dir, 'values_per_workbook.png')
    plt.xticks(fontsize=8)
    plt.savefig(target_file)

def visualize_column_sizes_per_datatype(datatype, column_sizes, directory):
    plt.clf()
    categories = []
    values = []
    for i in range(0, 8):
        categories.append(f'10^{i}\n-10^{i + 1}')
        values.append(column_sizes.get(f'10^{i}-10^{i + 1}', 0))
    plt.bar(categories, values, color='blue')
    plt.ylabel('Count of Columns with this size')
    plt.title(f'Column Sizes of {datatype} in Rows', y=1.08)
    target_directory = os.path.join(directory, 'Datatypes', datatype)
    total_sum = sum(values)
    for i, value in enumerate(values):
        percentage = (value / total_sum) * 100
        plt.text(i, value, f'{percentage:.1f}%', ha='center', va='bottom')
    if not os.path.exists(target_directory):
        os.makedirs(target_directory)
    target_file = os.path.join(target_directory, 'column_sizes.png')
    plt.savefig(target_file)

def visualize_columns_per_table_data(datatype, columns_per_table, directory):
    plt.clf()
    categories = []
    values = []
    max_columns = max(columns_per_table, key=int)
    for i in range (1, max_columns + 1):
        categories.append(i)
        values.append(columns_per_table.get(i, 0))
    plt.bar(categories, values, color='blue')
    plt.xlabel('Count of Columns')
    plt.ylabel('Count of Tables')
    plt.title(f'Columns per Table of type {datatype}', y=1.08)
    target_directory = os.path.join(directory, 'Datatypes', datatype)
    total_sum = sum(values)
    if max_columns <= 10:
        for i, value in enumerate(values):
            percentage = (value / total_sum) * 100
            plt.text(i + 1, value, f'{percentage:.1f}%', ha='center', va='bottom')
    if not os.path.exists(target_directory):
        os.makedirs(target_directory)
    target_file = os.path.join(target_directory, 'columns_per_table.png')
    plt.savefig(target_file)

def visualize_ascii_distribution(dir, ascii_list):
    plt.clf()
    total_columns = ascii_list[0] + ascii_list[1]
    bottom = [0] * 8
    value_types = {
        "ASCII": [],
        "Non ASCII": []
    }
    width = 2 / 9
    tuples = []
    values = []
    ascii_dict = ascii_list[4]
    non_ascii_dict = ascii_list[5]
    for i in range(0, 8):
        ascii_count = ascii_dict.get(f'10^{i}-10^{i + 1}', 0)
        non_ascii_count = non_ascii_dict.get(f'10^{i}-10^{i + 1}', 0)
        ascii_percentage = (ascii_count / total_columns) * 100
        non_ascii_percentage = (non_ascii_count / total_columns) * 100
        value_types["ASCII"].append(ascii_percentage)
        value_types["Non ASCII"].append(non_ascii_percentage)
        values.append(ascii_percentage + non_ascii_percentage)
        tuples.append(f'10^{i}-10^{i + 1}\n{((non_ascii_percentage / (ascii_percentage + non_ascii_percentage)) * 100 if (ascii_percentage + non_ascii_percentage > 0) else 0):.1f}%\nnon-ascii')
    fig, ax = plt.subplots()
    for boolean, value_type in value_types.items():
        p = ax.bar(tuples, value_type, width, label=boolean, bottom=bottom)
        bottom = value_type
    for i, value in enumerate(values):
        plt.text(i, value, f'{value:.1f}%', ha='center', va='bottom')
    ax.legend(loc='upper right')
    plt.ylabel('% of String Columns')
    plt.title('Distribution of ASCII and Non-ASCII Columns per Column-Size')
    plt.xticks(fontsize=6)
    target_file = os.path.join(dir, 'ascii_distribution.png')
    plt.savefig(target_file)

def visualize_datatypes(dir, dict, columns_per_table):
    datatypes_count = 1
    datatypes_others_count = 0
    value_types = {
        "Not Null": [],
        "Null": []
    }
    value_types_others = {
        "Not Null": [],
        "Null": []
    }
    datatypes = []
    datatypes_others = []
    values = []
    values_others = []
    others_not_null_count = 0
    others_null_count = 0
    count_absolute = 0
    for dictionary in dict.values():
        count_absolute += dictionary['occurrences'][0]
    for datatype, dictionary in dict.items():
        total_count = dictionary['occurrences'][0]
        null_count = dictionary['occurrences'][1]
        null_percentage = (null_count / total_count) * 100
        percentage = (total_count / count_absolute) * 100
        if percentage <= 1:
            value_types_others["Not Null"].append(total_count - null_count)
            value_types_others["Null"].append(null_count)
            datatypes_others.append(f"{datatype}\n{null_percentage:.1f}% null")
            values_others.append(total_count)
            others_not_null_count += (total_count - null_count)
            others_null_count += null_count
            datatypes_others_count += 1
        else:
            values.append(total_count)
            value_types["Not Null"].append(total_count - null_count)
            value_types["Null"].append(null_count)
            datatypes.append(f"{datatype}\n{null_percentage:.1f}% null")
            datatypes_count += 1
        visualize_column_sizes_per_datatype(datatype, dictionary['column sizes'], dir)
        visualize_columns_per_table_data(datatype, dictionary['columns per table'], dir)
    value_types["Not Null"].append(others_not_null_count)
    value_types["Null"].append(others_null_count)
    if (others_not_null_count + others_null_count) > 0:
        datatypes.append(f'Others\n{((others_null_count / (others_not_null_count + others_null_count)) * 100):.1f}% null')
    else:
        datatypes.append(f'Others\n0%')
    values.append(others_not_null_count + others_null_count)
    plt.clf()
    bottom = [0] * datatypes_count
    bottom_others = [0] * datatypes_others_count
    width = 2 / datatypes_count
    if datatypes_others_count > 0:
        width_others = 2 / datatypes_others_count
    fig, ax = plt.subplots()
    for boolean, value_type in value_types.items():
        p = ax.bar(datatypes, value_type, width, label=boolean, bottom=bottom)
        bottom = value_type
    for i, value in enumerate(values):
        percentage = (value / count_absolute) * 100
        plt.text(i, value, f'{percentage:.1f}%', ha='center', va='bottom')
    ax.text(0.5, 1.08, f"Number of Values per Datatype ({count_absolute} Values in total)", transform=ax.transAxes, ha='center', fontsize=14)
    ax.legend(loc="upper right")
    target_file = os.path.join(dir, 'datatypes.png')
    plt.xticks(fontsize=6)
    plt.savefig(target_file)
    plt.clf()
    if datatypes_others_count > 0:
        fig, ax = plt.subplots()
        for boolean, value_type in value_types_others.items():
            p = ax.bar(datatypes_others, value_type, width_others, label=boolean, bottom=bottom_others)
            bottom_others = value_type
        for i, value in enumerate(values_others):
            percentage = (value / count_absolute) * 100
            plt.text(i, value, f'{percentage:.2f}%', ha='center', va='bottom')
        ax.text(0.5, 1.08, f'Number of Values per Datatypes with a fraction < 1%', transform=ax.transAxes, ha='center', fontsize=14)
        ax.legend(loc='upper right')
        target_file = os.path.join(dir, 'other_datatypes.png')
        plt.xticks(fontsize=6)
        plt.savefig(target_file)

def visualize_table_appearance(dir, columns_per_table, datatypes_dict):
    plt.clf()
    tables_total = sum(value for value in columns_per_table.values())
    categories = []
    values = []
    for datatype, dictionary in datatypes_dict.items():
        categories.append(datatype)
        columns_per_table_datatype = dictionary['columns per table']
        appearance_count = sum(value for value in columns_per_table_datatype.values())
        percentage = (appearance_count / tables_total) * 100
        values.append(percentage)
    plt.bar(categories, values, color='blue')
    plt.title('Table Appearances per Datatype')
    plt.ylabel('% of Tables in which the datatype appears')
    for i, percentage in enumerate(values):
        plt.text(i, percentage, f'{percentage:.1f}%', ha='center', va='bottom')
    target_file = os.path.join(dir, 'table_appearances.png')
    plt.xticks(fontsize=6)
    plt.savefig(target_file)

def visualize_tables_per_workbook(dir, tables_per_workbook):
    plt.clf()
    workbook_count = sum(value for value in tables_per_workbook.values())
    max_quantity_of_tables = max(count for count in tables_per_workbook.keys())
    categories = []
    values = []
    for i in range(1, max_quantity_of_tables + 1):
        categories.append(i)
        workbooks = tables_per_workbook.get(i, 0)
        values.append((workbooks / workbook_count) * 100)
    plt.bar(categories, values, color='blue')
    plt.xlabel('Quantity of Tables')
    plt.ylabel('% of Workbooks with this Quantity of Tables')
    plt.title('Tables per Workbook')
    if len(values) <= 10:
        for i, percentage in enumerate(values):
            plt.text(i + 1, percentage, f'{percentage:.1f}%', ha='center', va='bottom')
    target_file = os.path.join(dir, 'tables_per_workbook.png')
    plt.savefig(target_file)

def visualize_columns_per_table(dir, columns_per_table_dict):
    plt.clf()
    most_columns = max(key for key in columns_per_table_dict.keys())
    total_tables = sum(tables for tables in columns_per_table_dict.values())
    categories = []
    values = []
    for i in range(1, most_columns + 1):
        categories.append(i)
        tables = columns_per_table_dict.get(i, 0)
        percentage = (tables / total_tables) * 100
        values.append(percentage)
    plt.bar(categories, values, color='blue')
    plt.title('Columns per Table')
    plt.ylabel('% of Tables with so many Columns')
    plt.xlabel('Columns')
    target_file = os.path.join(dir, 'columns_per_table.png')
    plt.savefig(target_file)

def add_workbook_to_top_workbooks(value_count, workbook_directory):
    if len(top_5_workbooks) < 5:
        top_5_workbooks[value_count] = workbook_directory
    else:
        smallest_count = min(top_5_workbooks.keys())
        if value_count > smallest_count:
            top_5_workbooks.pop(smallest_count)
            top_5_workbooks[value_count] = workbook_directory

def add_values_to_workbook(table_list, workbook_directory):
    value_count = 0
    for table in table_list:
        tuple_count = table[0]
        datatypes_dictionary = table[1]
        for dictionary in datatypes_dictionary.values():
            value_count += dictionary['occurrences'] * tuple_count
    values_per_workbook_detailed.append(value_count)
    add_value_to_staggered_dict(1, value_count, values_per_workbook)
    add_workbook_to_top_workbooks(value_count, workbook_directory)

def add_tuple_count_detailed(count):
    if count in tuples_per_table_detailed:
        tuples_per_table_detailed[count] += 1
    else:
        tuples_per_table_detailed[count] = 1

def add_string_lengths(strlen_dict):
    for stringlengths in strlen_dict.values():
        for length, occurrences in stringlengths.items():
            if length in string_lengths:
                string_lengths[length] += occurrences
            else:
                string_lengths[length] = occurrences

if len(sys.argv) > 1:
    analysis_directory = Path(sys.argv[1])
else:
    raise TypeError("Please give a path to a directory with the workbook-directories including the analysis.json files as a parameter.")

workbook_directories = [Path(os.path.join(analysis_directory, d)) for d in os.listdir(analysis_directory) if os.path.isdir(os.path.join(analysis_directory, d))]

for workbook_directory in workbook_directories:
    analysis_json_path = os.path.join(workbook_directory, 'analysis.json')
    if os.path.exists(analysis_json_path):
        with open(analysis_json_path, 'r') as json_file:
            table_list = json.load(json_file)
            add_tables_per_workbook(len(table_list))
            add_values_to_workbook(table_list, workbook_directory)
            tuples_workbook = 0
            for table in table_list:
                tuple_count = table[0]
                tuples_workbook += tuple_count
                datatypes_dictionary = table[1]
                text_dictionary = datatypes_dictionary.get('TEXT')
                add_string_lengths(table[2])
                add_tuple_count_detailed(tuple_count)
                add_value_to_staggered_dict(1, tuple_count, tuples_per_table)
                add_datatypes(tuple_count, datatypes_dictionary)
                add_columns_per_table(tuple_count, datatypes_dictionary)
                if text_dictionary is not None:
                    handle_strings(tuple_count, text_dictionary)
            add_value_to_staggered_dict(1, tuples_workbook, tuples_per_workbook)
#    else:
#        print(f'The directory {workbook_directory} does not contain an analysis.json file.') # remove all prints

#Testing
        
# print(f'Datatypes Dictionary: {datatypes_dict}.\n')
# print(f'Tables per Workbook: {tables_per_workbook}. \n')
# print(f'Tuples per Table: {tuples_per_table}.\n')
# print(f'Columns per Table: {columns_per_table}.\n')
# print(f'Values per Table: {values_per_table}.\n')
# print(f'ASCII List: {ascii_list}.\n')
# print(f'Values per Workbook: {values_per_workbook}.')

target_directory = os.path.join(analysis_directory, 'Meta_Analysis')
if not os.path.exists(target_directory):
    os.makedirs(target_directory)

visualize_datatypes(target_directory, datatypes_dict, columns_per_table)
visualize_table_appearance(target_directory, columns_per_table, datatypes_dict)
visualize_tables_per_workbook(target_directory, tables_per_workbook)
visualize_values_per_workbook(target_directory, values_per_workbook)
visualize_tuples_per_table(target_directory, tuples_per_table)
visualize_columns_per_table(target_directory, columns_per_table)
visualize_values_per_table(target_directory, values_per_table)
visualize_ascii_strings(target_directory, ascii_list)
visualize_ascii_distribution(target_directory, ascii_list)
visualize_tuples_per_workbook(target_directory, tuples_per_workbook)

'''top_5_workbooks = {}
datatypes_dict = {}
tables_per_workbook = {}
values_per_workbook = {}
tuples_per_table = {}
columns_per_table = {}
values_per_table = {}
ascii_list = [0, 0, 0, 0, {}, {}]'''

nested_json = {}
json_file = Path(os.path.join(target_directory, 'analysis.json'))
with open(json_file, 'a') as file:
    nested_json['Datatypes Dictionary'] = datatypes_dict
    nested_json['Tables per workbook'] = tables_per_workbook
    nested_json['Values per workbook'] = values_per_workbook
    nested_json['Tuples per table'] = tuples_per_table
    nested_json['Columns per table'] = columns_per_table
    nested_json['Values per table'] = values_per_table
    nested_json['ASCII list'] = ascii_list
    nested_json['Tuples per workbook'] = tuples_per_workbook
    nested_json['Stringlength Distribution'] = string_lengths
    nested_json['Tuples per workbook detailed'] = tuples_per_table_detailed
    nested_json['Values per Workbook detailed'] = values_per_workbook_detailed
    json.dump(nested_json, file)

top_5_workbooks_list = list(str(value) for value in top_5_workbooks.values())
print(top_5_workbooks_list)


    