import matplotlib.pyplot as plt

# Diagramm erstellen
fig, ax = plt.subplots()

# Titel für die Achse setzen
ax.set_title("")

# Hier kannst du weitere Anpassungen am Diagramm vornehmen

# Beispiel für andere Anpassungen am Diagramm
ax.plot([1, 2, 3], [4, 5, 6])

# Position des Achsentitels anpassen
title_position = (0.5, 1.15)  # Beispielwerte
ax.text(title_position[0], title_position[1], "Neue Position", transform=ax.transAxes, ha='center')

# Diagramm anzeigen
plt.show()