# Dieses Skript geht alle CSV-Files eines Workbooks durch und schreibt deren längen (Menge der Tupel) gebündelt in anzahl.txt

import sys
from pathlib import PosixPath

try:
    if len(sys.argv) > 1:
        input_file_path = PosixPath(sys.argv[1])
    else: 
        raise TypeError("Es muss ein Pfad zu einer csv-Datei übergeben werden!")

    output_file_path = 'temp/anzahl.txt'

    input_file_path_without_ending = input_file_path.parent / input_file_path.stem

    try:
        counter = 0
        with open(output_file_path, 'a') as output_file:
            output_file.write('\n')
        while True:
            anzahl_zeilen = 0
            csv_file = input_file_path.with_name(input_file_path.stem + '_' + str(counter) + '.csv')
            with open(csv_file, 'r') as input_file:
                for line in input_file:
                    anzahl_zeilen += 1

            with open(output_file_path, 'a') as output_file:
                output_file.write(str(anzahl_zeilen) + '\n') 
            counter += 1
    except FileNotFoundError:
        print("Alle csv-Dateien gescant.")

except TypeError as e:
    print(f"Fehler aufgetreten: {e}")
except FileNotFoundError as e:
    print(f"Fehler beim Öffnen der Datei: {e}")