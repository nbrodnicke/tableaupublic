import matplotlib.pyplot as plt
import numpy as np

number_of_occurrences = {} # Dictionary: Key ist der Datatype, Value ist ein weiteres Dictionary:
                            # Dessen Key ist die Nummer der Tabelle, in der der Datatype vorkommt (nicht weiter wichtig ausser für Analyse, in wie vielen Tables der Datatype vorkommt)
                            # Der Value ist eine Liste mit genau zwei Einträgen:
                                # Der erste Eintrag ist die Anzahl der Vorkommen des Datatypes in der jeweiligen Tabelle
                                # Der zweite Eintrag ist die Grösse der Tabelle selbst
input_file = 'temp/datentypen.txt'
test_occurrences = {} # To be removed, for testing only
null_occurrences = {}

# Setting up for the plotting
datatypes = []
value_types = {
    "Not Null": np.array([]),
    "Null": np.array([]),
}
width = 0.8
fig, ax = plt.subplots()
bottom = np.zeros(0)

def add_test_occurrences(type, occ): # To be removed, for testing only
    if type in test_occurrences:
        test_occurrences[type].append(occ)
    else:
        test_occurrences[type] = [occ]

def add_null_occurrences(type, count):
    if type in null_occurrences:
        null_occurrences[type].append(count)
    else:
        null_occurrences[type] = [count]

# Diese Funktion analysiert, wie gross die Tabellenspalten sind, in denen der Datentyp vorkommt
def analyze_column_occurrences(occ):
    anzahlen = [0] * 9
    for table_number, count_and_occurrences in occ.items():
        for i in range(9):
            if count_and_occurrences[1] < (10 ** (i + 1)):
                anzahlen[i] += count_and_occurrences[0]
                break
    for i in range(9):
        if anzahlen[i] == 0:
            continue
        print(f"{anzahlen[i]} Occurences in Tabellenspalten mit zwischen 10^{i} und 10^{i + 1} Werten.")

# Diese Funktion analysiert, wie viele Werte der Datentyp in den verschiedenen Tabellen hat
def analyze_table_occurrences(occ):
    anzahlen = [0] * 9
    for table_number, count_and_occurrences in occ.items():
        for i in range(9):
            if (count_and_occurrences[1] * count_and_occurrences[0]) < (10 ** (i + 1)):
                anzahlen[i] += 1
                break
    for i in range(9):
        if anzahlen[i] == 0:
            continue
        print(f"Der Datentyp hat in {anzahlen[i]} Tabellen zwischen 10^{i} und 10^{i + 1} Werte.")

# Hier lesen wir die datentypen.txt Datei und analysieren die Vorkommen der Datatypes (siehe number_of_occurrences Dictionary Erklärung weiter oben)
with open(input_file, 'r') as file:
    table_number = 0
    for line in file:
        if line == '\n':
            table_number += 1
            continue
        parts = line.rsplit(' ', 2)
        datatype = parts[0]
        occurrences = int(parts[1].strip())
        null_count = int(parts[2].strip())
        add_test_occurrences(datatype, occurrences) # To be removed, for testing only
        add_null_occurrences(datatype, null_count)
        if datatype in datatypes:
            position = datatypes.index(datatype)
            value_types["Not Null"][position] += (occurrences - null_count)
            value_types["Null"][position] += null_count
        else:
            datatypes.append(datatype)
            value_types["Not Null"] = np.append(value_types["Not Null"], occurrences - null_count)
            value_types["Null"] = np.append(value_types["Null"], null_count)
        if datatype in number_of_occurrences:
            if table_number in number_of_occurrences[datatype]:
                number_of_occurrences[datatype][table_number][0] += 1
            else:
                number_of_occurrences[datatype][table_number] = [1, occurrences]
        else: 
            number_of_occurrences[datatype] = {}
            number_of_occurrences[datatype][table_number] = [1, occurrences]
        
# Für jeden Datentypen betrachten wir sein Analyse-Dictionary occ und geben die für uns interessanten Werte aus
for datatype, occ in number_of_occurrences.items():
    total = 0
    table_columns = 0
    for table_number, count_and_occurrences in occ.items():
        total += (count_and_occurrences[0] * count_and_occurrences[1]) # Die Summe pro Tabelle ist Anzahl der Tabellenspalten in der Tabelle mal deren Grösse
        table_columns += count_and_occurrences[0]
    tables = len(occ) # Die Menge der Vorkommen der Tabelle entspricht einfach der Menge der Table-Numbers des Datatypes
    print(f"Der Datentyp {datatype} hat folgende Occurrences in Tabellen: {test_occurrences[datatype]}.") # To be removed, for testing only
    print(f"Das sind insgesamt {total} Werte in {table_columns} Tabellenspalten in {tables} Tabellen.")
    print(f"Der Durchschnitt an Werten pro Tabellenspalte beträgt folglich {int(round(total / table_columns, 0))} Werte pro Tabellenspalte.")
    print(f"Der Durchschnitt an Werten pro Tabelle beträgt folglich {int(round(total / tables, 0))} Werte pro Tabelle.")
    print(f"Der Datentyp {datatype} hat {str(sum(null_occurrences[datatype]))} Null-Werte.")
    analyze_column_occurrences(occ)
    analyze_table_occurrences(occ)
    print('\n')

# Plotting
bottom = np.zeros(len(datatypes))
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

plt.show()