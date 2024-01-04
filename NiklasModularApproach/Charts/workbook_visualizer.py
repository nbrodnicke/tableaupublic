import matplotlib.pyplot as plt

# Daten für das Balkendiagramm
categories = ['A', 'B', 'C', 'D']
values = [4, 7, 2, 5]
widths = [0.2, 0.5, 0.1, 0.3]  # Breiten der Balken

# Erstellen des Balkendiagramms
bars = plt.bar(categories, values, width=widths, color='blue')

# Text in die Balken schreiben
for bar, value in zip(bars, values):
    plt.text(bar.get_x() + bar.get_width() / 2, bar.get_height() / 2, str(value),
             ha='center', va='center', rotation='vertical')

# Achsentitel und Diagrammtitel hinzufügen
plt.xlabel('Kategorien')
plt.ylabel('Werte')
plt.title('Balkendiagramm mit unterschiedlichen Breiten')

# Diagramm anzeigen
plt.show()