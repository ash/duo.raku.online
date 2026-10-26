---
title: 'Solution: Whatever mit map'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Den Quellcode findest du in der Datei [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Ausgabe

```
(3 6 9 12)
```

## Kommentare

1. `* * 3` ist ein Whatever-Ausdruck, der zu einem `WhateverCode` mit einem Argument wird. Das ist ein ganz normaler Funktionswert, gespeichert in `$triple`.

1. Das ist nur eine Funktion, also akzeptiert `map` sie wie jeden Block. `map` wendet sie auf jedes Element von `1..4` an, was `(3 6 9 12)` ergibt.

{% include nav.html %}
