---
title: Übung ’Mitarbeiter und Rollen‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Erstellen Sie eine Basisklasse `Employee`. Sie ist die Elternklasse für die anderen Klassen. Sie hat ein Attribut `name` und zwei Methoden. Die Methode `role` gibt `'staff'` zurück. Die Methode `badge` gibt die Zeichenkette `<name> - <role>` zurück. Für die Rolle ruft sie ihre eigene Methode `role` auf.

Erstellen Sie dann zwei Kindklassen, `Manager` und `Intern`. Sie erben von `Employee`. Jede von ihnen überschreibt `role`. Das heißt, sie hat ihre eigene Version dieser Methode. In `Manager` gibt `role` den Wert `'manager'` zurück. In `Intern` gibt die Methode `'intern'` zurück.

Geben Sie das Namensschild eines Managers mit dem Namen `Anna` aus. Geben Sie dann das Namensschild eines Praktikanten mit dem Namen `Bob` aus.

## Beispiel

Das Programm gibt aus:

```
Anna - manager
Bob - intern
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
