---
title: Ein Heredoc
---

{% include menu.html %}

## Problem

Benutze ein *interpolierendes* Heredoc, um einen Brief zu bauen, der eine Bestellung bestätigt. Benutze ein paar Variablen: einen Kundennamen `$name`, ein `$item`, einen `$price` und einen `$count`. Der Preis gilt für ein Stück. Das Heredoc soll die Variablen interpolieren. Es soll *auch* die Gesamtsumme im Text berechnen, mit einem eingebetteten `{ … }`-Block (`$count * $price`).

Rücke den Rumpf des Heredocs so ein, dass er mit dem Code um ihn herum auf einer Linie steht. Richte das schließende Abschlusswort am Text aus. Dann erscheint die Einrückung nicht in der Ausgabe. Gib das Ergebnis aus.

## Beispiel

Nimm `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` und `$count = 3`. Dann gibt das Programm Folgendes aus, ohne Leerzeichen am Anfang:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
