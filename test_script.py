import json

#TODO: Mal mit anderen Dateien probieren
file_path = '/Users/niklasbrodnicke/Documents/Eigenes Tableau-Repository/Output of Workbooks/Watch Me Viz Stats | Makeover Monday/hyperd.log'

"""try:
    with open(file_path, 'r') as file:
        first_line = file.readline()
        first_line = first_line.strip()
        
        try: 
            json_object = json.loads(first_line)
        except json.JSONDecodeError:
            print(f"Ungültige JSON-Zeile: {first_line}")

        json_string = json.dumps(json_object)
        print("First Line: " + first_line + '\n')
        print("First Line type: " + str(type(first_line)) + '\n')
        print("JSON-Objekt: " + json_string + '\n')
        v_object_dict = json_object.get("v", "no v object")
        print("v object: " + str(v_object_dict) + '\n')
        print("v object type: " + str(type(v_object_dict)) + '\n') #Das v Objekt hat den Typen dict, ein Dictionary (Schlüssel-Wert-Paare)

        try:
            v_object = json.dumps(v_object_dict)
            v_object = json.loads(v_object)
        except (TypeError, ValueError) as e:
            print (f"Fehler beim Serialisieren: {e}")

        command_line = v_object.get("command-line", "no command line")
        print(f"command-line: {command_line}\n")


except FileNotFoundError:
    print("Die Datei wurde gar nicht erst gefunden")"""

try: 
    with open(file_path, 'r') as file:
        json_objects = []
        queries = []

        for line in file: 
            line = line.strip()

            try:
                json_object = json.loads(line)
                json_objects.append(json_object)

            except json.JSONDecodeError:
                print(f"Ungültige JSON-Zeile: {line}")

        with open('python_2.txt', 'w') as python_file:
            for json_object in json_objects:
                json_string = json.dumps(json_object)
                python_file.write("JSON-Objekt: " + json_string + '\n')

                try:
                    v_object_dict = json_object.get("v", "no v-Object")
                    v_object_string = json.dumps(v_object_dict)
                    v_object = json.loads(v_object_string)
                    query = v_object.get("query", "no query")
                    python_file.write("Query: " + query + '\n')
                    query_trunc = v_object.get("query-trunc", "no query-trunc")
                    python_file.write("Query-Trunc: " + query_trunc + '\n')
                    queries.append(query)
                    queries.append(query_trunc)

                except Exception as e:
                    print(f"Es ist etwas mit dem Umwandeln des v-Objekts schiefgelaufen: {e}")

        filtered_queries = [s for s in queries if s != "no query"]
        filtered_queries = [s for s in filtered_queries if s != "no query-trunc"]
        select_queries = list(filter(lambda x: x.startswith("SELECT"), filtered_queries))
        
        with open('queries.sql', 'w') as queries_file:
            for select_query in select_queries:
                queries_file.write(select_query + '\n')

except FileNotFoundError:
    print("Die Datei wurde gar nicht erst gefunden.")