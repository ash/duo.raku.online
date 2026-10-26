---
title: 'Solution: Hex zu Dezimal'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Radix-Form `:16<1A>` liest `1A` als Zahl zur Basis 16. Das ist `1 × 16 + 10 = 26`. Jetzt enthält die Variable `$n` eine normale ganze Zahl.

1. `$n.base(16)` wandelt diese ganze Zahl zurück in eine Zeichenkette zur Basis 16, und das ergibt wieder `1A`. Das bestätigt, dass Lesen und Ausgeben in einem Zahlensystem entgegengesetzte Operationen sind.

{% include nav.html %}
