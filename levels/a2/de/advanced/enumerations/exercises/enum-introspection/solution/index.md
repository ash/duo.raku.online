---
title: 'Solution: Zählen und Summieren'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Wir schreiben die Konstanten als Paare. So wählen wir den Wert jeder Konstante selbst. Raku nummeriert sie nicht ab null.

1. `.enums` gibt eine Map zurück. Eine Map ist wie ein Hash. Darin hat jeder Konstantenname seinen Wert. `.elems` zählt die Einträge. Es gibt vier Münzen.

1. `.values` nimmt nur die Zahlen hinter den Namen. `.sum` addiert sie: `1 + 5 + 10 + 25` ist `41`.

{% include nav.html %}
