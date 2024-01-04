import matplotlib.pyplot as plt

input_file_path = 'temp/anzahl.txt'

anzahlen = [0] * 9
tables_pro_workbook = {} # Key ist die Anzahl der Tables pro Workbook und Value die Anzahl der Workbooks mit dieser Anzahl an Tables
kategorien = []

for i in range(9):
    kategorien.append(f'10^{i}-10^{i+1}')

def add_workbook_to_table_counter(count):
    if count in tables_pro_workbook:
        tables_pro_workbook[table_counter] += 1
    else:
        tables_pro_workbook[table_counter] = 1


with open(input_file_path, 'r') as file:
    table_counter = 0
    next(file)
    previous_line_was_linebreak = False
    for line in file:
        if line == '\n':
            if previous_line_was_linebreak:
                add_workbook_to_table_counter(table_counter)
                table_counter = 0
            else:
                previous_line_was_linebreak = True
            continue
        previous_line_was_linebreak = False
        table_counter += 1
        anzahl = int(line.strip())
        for i in range(9):
            if anzahl < (10 ** (i + 1)):
                anzahlen[i] += 1
                break
    add_workbook_to_table_counter(table_counter)

print("Wir haben:")
for i in range(9):
    print(f"{anzahlen[i]} Tabellen mit zwischen 10^{i} und 10^{i + 1} Tupeln.")

for tables, workbooks in tables_pro_workbook.items():
    print(f"Wir haben {workbooks} Workbooks mit {tables} Tabellen.")

plt.bar(kategorien, anzahlen)
plt.title("Anzahl an Tabellen sortiert nach Menge der Tupel")
plt.xlabel("Anzahl an Tupeln pro Tabelle")
plt.ylabel("Anzahl an Tabellen")
gesamtsumme = sum(anzahlen)
for i, wert in enumerate(anzahlen):
    prozentwert = (wert / gesamtsumme) * 100
    plt.text(i, wert, f'{prozentwert:.1f}%', ha='center', va='bottom')
plt.show()