---
title: Die Größe klassifizieren
translations_gpt:
---

{% include menu.html %}

## Problem

Schreiben Sie drei Multi-Subroutinen mit dem Namen `size`. Jede davon nimmt ein `Int`. Sie geben `'small'`, `'medium'` oder `'large'` zurück. Achten Sie nur auf die *Größe* der Zahl, nicht auf ihr Vorzeichen. Nehmen Sie den Absolutwert der Zahl. Wenn er kleiner als `10` ist, ist die Zahl klein. Wenn er kleiner als `100` ist, ist die Zahl mittelgroß. Jede andere Zahl ist groß. Verwenden Sie eine `where`-Klausel bei den ersten beiden Kandidaten. Der dritte Kandidat nimmt alle anderen Zahlen.

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
