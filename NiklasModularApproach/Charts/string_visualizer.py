import matplotlib.pyplot as plt

# Beispielwerte für x und y
x_values = list(range(1, 51))  # Konsekutive Integer von 1 bis 10
y_values = [5, 8, 3, 6, 4, 9, 2, 7, 1, 5, 5, 8, 3, 6, 4, 9, 2, 7, 1, 5, 5, 8, 3, 6, 4, 9, 2, 7, 1, 5, 5, 8, 3, 6, 4, 9, 2, 7, 1, 5, 5, 8, 3, 6, 4, 9, 2, 7, 1, 5]  # Beispiel-Y-Werte

# Erstellen des Balkendiagramms
plt.bar(x_values, y_values, color='blue')

# Achsentitel und Diagrammtitel hinzufügen
plt.xlabel('X-Achse (Integer)')
plt.ylabel('Y-Achse (Höhe der Balken)')
plt.title('Balkendiagramm mit konsekutiven Integer-Werten')

# Diagramm anzeigen
plt.show()