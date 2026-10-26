---
title: 'Solution: Ein Heredoc'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Das Heredoc beginnt mit `qq:to` statt mit `q:to`, deshalb interpoliert es den Text. Wie ein `qq`-String setzt es die Skalare `$name`, `$count` und `$item` ein. Es führt *auch* Code im Text aus: Der Block `{$count * $price}` berechnet `3 * 25`. Deshalb erscheint die Gesamtsumme, `75`, direkt im Text.

1. Die doppelten Anführungszeichen um `"$item"` sind hier nur normale Zeichen. In einem Heredoc gibt es kein Trennzeichen, das man escapen muss. Deshalb werden die Anführungszeichen so ausgegeben, wie sie geschrieben sind, während `$item` trotzdem interpoliert wird.

1. Der Rumpf und das schließende `END` haben dieselbe Einrückung von vier Leerzeichen. Die Einrückung des Abschlussworts wird aus jeder Zeile entfernt. Deshalb kommen diese vier Leerzeichen nie in den String. Die Ausgabe beginnt am linken Rand.

1. Das Heredoc endet bereits mit einem Zeilenumbruch. Deshalb benutzt der Code `print` statt `say`. Mit `say` würdest du einen zweiten Zeilenumbruch und eine zusätzliche Leerzeile bekommen.

{% include nav.html %}
