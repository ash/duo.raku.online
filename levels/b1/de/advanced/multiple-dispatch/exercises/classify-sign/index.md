---
title: Die Größe klassifizieren
translations_gpt:
---

{% include menu.html %}

## Problem

Schreiben Sie drei Multi-Subroutinen namens `size`. Jede nimmt ein `Int` und gibt `'small'`, `'medium'` oder `'large'` zurück. Entscheiden Sie nach der *Größe* der Zahl und ignorieren Sie ihr Vorzeichen. Wenn der Absolutwert kleiner als `10` ist, ist die Zahl klein. Wenn er kleiner als `100` ist, ist sie mittelgroß, und alles andere ist groß. Verwenden Sie eine `where`-Klausel bei den ersten beiden Kandidaten. Der dritte soll alles andere abfangen.

Geben Sie das Ergebnis von `size(7)`, `size(30)` und `size(-250)` aus.

## Beispiel

Das Programm gibt aus:

```
small
medium
large
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
