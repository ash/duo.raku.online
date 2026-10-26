---
title: Slurpy benannte Argumente
translations_gpt:
---

{% include menu.html %}

## Problem

Schreiben Sie eine Subroutine `describe`, die einen erforderlichen positionalen Namen nimmt. Danach sammelt die Subroutine beliebig viele benannte Argumente in einem Slurpy-Hash (`*%opts`). Sie soll einen String der Form `name: key=value, key=value, ...` zurückgeben. Der String nennt jede Option, mit den Schlüsseln in alphabetischer Reihenfolge.

Rufen Sie sie als `describe('Anna', colour => 'red', size => 5)` auf und geben Sie das Ergebnis aus.

## Beispiel

Das Programm gibt aus:

```
Anna: colour=red, size=5
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
