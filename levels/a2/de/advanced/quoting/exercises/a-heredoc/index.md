---
title: Ein Heredoc
---

{% include menu.html %}

## Problem

Schreib einen Brief, der eine Bestellung bestätigt. Benutze ein Heredoc, das *interpoliert*. Baue den Brief aus ein paar Variablen. Die Variablen sind ein Kundenname `$name`, ein `$item`, ein `$price` und ein `$count`. Der Preis gilt für ein Stück. Das Heredoc setzt die Werte der Variablen ein. Es berechnet *auch* die Gesamtsumme. Dafür hat es einen `{ … }`-Block im Text (`$count * $price`).

Rücke den Rumpf des Heredocs ein. Er muss mit dem Code um ihn herum auf einer Linie stehen. Rücke das schließende Abschlusswort genauso weit ein wie den Text. Dann hat die Ausgabe keine Einrückung. Gib das Ergebnis aus.

## Beispiel

Nimm `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` und `$count = 3`. Dann gibt das Programm das hier aus. Am Anfang der Zeilen stehen keine Leerzeichen:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
