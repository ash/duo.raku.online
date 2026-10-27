---
title: Übung ’Mitarbeiter und Rollen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Definieren Sie eine Basisklasse `Employee` mit einem Attribut `name` und zwei Methoden. Die Methode `role` gibt `'staff'` zurück. Die Methode `badge` gibt die Zeichenkette `<name> - <role>` zurück und benutzt dafür ihre eigene Methode `role`.

Definieren Sie dann zwei Kindklassen, `Manager` und `Intern`, die von `Employee` erben. Sie überschreiben `role`: In `Manager` gibt die Methode `'manager'` zurück und in `Intern` `'intern'`.

Geben Sie die Namensschilder eines Managers namens `Anna` und eines Praktikanten namens `Bob` aus.

## Beispiel

Das Programm gibt aus:

```
Anna - manager
Bob - intern
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
