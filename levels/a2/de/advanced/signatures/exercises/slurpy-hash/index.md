---
title: Slurpy benannte Argumente
translations_gpt:
---

{% include menu.html %}

## Problem

Schreiben Sie eine Subroutine `describe`. Ihr erster Parameter ist ein Name. Dieser Name ist positional und erforderlich. Danach sammelt ein Slurpy-Hash `*%opts` beliebig viele benannte Argumente. Die Subroutine gibt einen String wie diesen zurück: `name: key=value, key=value, ...`. Der String nennt jede Option. Die Schlüssel sind in alphabetischer Reihenfolge.

Rufen Sie sie so auf: `describe('Anna', colour => 'red', size => 5)`. Geben Sie das Ergebnis aus.

## Beispiel

Das Programm gibt aus:

```
Anna: colour=red, size=5
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
