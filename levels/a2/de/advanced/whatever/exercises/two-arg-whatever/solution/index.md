---
title: 'Solution: Ein Whatever mit zwei Argumenten'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Den Quellcode findest du in der Datei [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Ausgabe

```
a-b
```

## Kommentare

1. Der Ausdruck hat zwei Sterne. Also macht Raku einen `WhateverCode` mit zwei Argumenten. Der erste Stern ist das erste Argument. Der zweite Stern ist das zweite Argument.

1. Der Aufruf `$join('a', 'b')` setzt die Werte der Reihe nach für die Sterne ein. Das ergibt `'a' ~ '-' ~ 'b'`. Das Ergebnis ist `a-b`.

{% include nav.html %}
