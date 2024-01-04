dictionary = {'0': 3}
greatest_item = dictionary.popitem()
greatest_strlen = greatest_item[0]
greatest_value = greatest_item[1]

x_values_overall = []
y_values_overall = []
greatest_strlen_overall = -1

not_just_null_values = True
if greatest_strlen == '0':
    null_values = greatest_value
    try:
        greatest_item = dictionary.popitem() # Was passiert, wenn wir hier nicht mehr poppen können? -> Sicherheitsvorkehrung einbauen
        greatest_strlen = greatest_item[0]
        greatest_value = greatest_item[1]
    except KeyError as e:
        print(f'Das Attribut in Table hat ausschliesslich null-values.')
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
    value_for_strlen = dictionary.get(str(i), 0)
    y_values.append(value_for_strlen)
    y_values_overall[i] += value_for_strlen
if not_just_null_values:
    y_values.append(greatest_value)
    y_values_overall[greatest_strlen_int] += greatest_value

print(f"x_values: {x_values}.")
print(f"y_values: {y_values}.")
print(f"x_values_overall: {x_values_overall}.")
print(f"y_values_overall: {y_values_overall}.")