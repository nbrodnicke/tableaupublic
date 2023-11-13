import json

file_path = '/Users/niklasbrodnicke/Documents/Eigenes Tableau-Repository/Output of Workbooks/Watch Me Viz Stats | Makeover Monday/hyperd.log'

def test_method(string):
    try:
        with open(file_path, 'r') as file:
            json_objects = []
            queries = []
            inhalt = file.read()
            file.seek(0)

            for line in file:
                line = line.strip()

                try:
                    json_object = json.loads(line)
                    json_objects.append(json_object)
                except json.JSONDecodeError:
                    print(f"Ungültige JSON-Zeile: {line}")

            for json_object in json_objects:
                v_object_dict = json_object.get("v", "no v-Object")
                v_object_string = json.dumps(v_object_dict)
                v_object = json.loads(v_object_string)
                query = v_object.get(f"{string}", f"no {string}")
                queries.append(query)

            queries = [s for s in queries if s != f"no {string}"]
            print(f"Anzahl der gefunden {string}s in v-Objekten: {len(queries)}.\n")

            anzahl_queries = inhalt.count(f'"{string}":')
            print(f"Anzahl der gesamt gefunden \"{string}\": Zeichenfolgen: {anzahl_queries}\n")

    except FileNotFoundError:
        print("Die Datei wurde gar nicht erst gefunden.")

test_method("query")
test_method("query-trunc")