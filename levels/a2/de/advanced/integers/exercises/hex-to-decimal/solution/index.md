---
title: 'Solution: Hex zu Dezimal'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Du findest den Quellcode in der Datei [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Ausgabe

```
26
1A
```

## Kommentare

1. Die Radix-Form `:16<1A>` liest `1A` als Zahl zur Basis 16. Der Wert ist `1 × 16 + 10 = 26`. Jetzt enthält die Variable `$n` diesen Wert als normale ganze Zahl.

1. `$n.base(16)` macht aus der ganzen Zahl wieder eine Zeichenkette zur Basis 16. Das Ergebnis ist wieder `1A`. Also sind Lesen und Ausgeben in einem Zahlensystem Gegenteile.

{% include nav.html %}
