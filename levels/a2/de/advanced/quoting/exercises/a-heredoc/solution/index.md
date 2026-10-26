---
title: 'Solution: Ein Heredoc'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Du findest den Quellcode in der Datei [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Ausgabe

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Kommentare

1. Das Heredoc beginnt mit `qq:to`, nicht mit `q:to`. Also interpoliert das Heredoc. Es funktioniert wie ein `qq`-String. Es setzt die Skalare `$name`, `$count` und `$item` ein. Es führt *auch* Code im Text aus. Der Block `{$count * $price}` berechnet `3 * 25`. Deshalb erscheint die Gesamtsumme `75` im Text.

1. Sieh dir die doppelten Anführungszeichen in `"$item"` an. Hier sind sie nur normale Zeichen. In einem Heredoc sind Anführungszeichen keine Trennzeichen. Deshalb brauchen sie keinen Backslash. Raku gibt die Anführungszeichen so aus, wie sie sind. Aber Raku interpoliert `$item` trotzdem.

1. Der Rumpf und das schließende `END` haben beide vier Leerzeichen davor. Raku entfernt die Einrückung des Abschlussworts aus jeder Zeile. Deshalb kommen diese vier Leerzeichen nie in den String. Die Ausgabe beginnt am linken Rand.

1. Das Heredoc endet schon mit einem Zeilenumbruch. Deshalb benutzt das Programm `print`, nicht `say`. `say` fügt noch einen Zeilenumbruch hinzu. Das ergibt eine zusätzliche Leerzeile.

{% include nav.html %}
