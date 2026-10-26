---
title: 'Lösung: Ein Zähler'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Du findest den Quellcode in der Datei [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Ausgabe

```
0
5
```

## Kommentare

1. Das Attribut ist mit `is rw` deklariert, also gibt sein Accessor einen schreibbaren Container zurück. `= 0` gibt ihm einen Startwert. Das erste `say` zeigt, dass ein neuer Zähler wirklich bei diesem Standardwert beginnt, bei `0`.

1. Der Accessor ist schreibbar, also kann `++` ihn erhöhen. Das funktioniert so, wie Sie es erwarten würden.

{% include nav.html %}
