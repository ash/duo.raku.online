---
title: 'Solution: Zählen und Summieren'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Du findest den Quellcode in der Datei [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Ausgabe

```
4
41
```

## Kommentare

1. Die Konstanten sind als Paare geschrieben. So bekommt jede den Wert, den wir gewählt haben, und nicht die automatischen Zahlen ab null.

1. `.enums` gibt eine Map zurück, in der jeder Konstantenname auf seinen Wert zeigt. `.elems` zählt die Einträge, und es gibt vier Münzen.

1. `.values` gibt nur die Zahlen hinter den Namen zurück. Dann addiert `.sum` sie: `1 + 5 + 10 + 25` ist `41`.

{% include nav.html %}
