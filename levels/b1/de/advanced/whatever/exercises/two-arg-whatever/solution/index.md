---
title: 'Solution: Ein Whatever mit zwei Argumenten'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Ausdruck hat zwei Sterne, also baut Raku einen `WhateverCode`, der zwei Argumente nimmt. Der erste Stern ist das erste Argument, und der zweite Stern ist das zweite.

1. Der Aufruf `$join('a', 'b')` füllt die Sterne der Reihe nach. Das ergibt `'a' ~ '-' ~ 'b'`, also `a-b`.

{% include nav.html %}
