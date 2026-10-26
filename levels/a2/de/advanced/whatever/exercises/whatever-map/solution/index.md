---
title: 'Solution: Whatever mit map'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `* * 3` ist ein Whatever-Ausdruck. Er wird zu einem `WhateverCode` mit einem Argument. Das ist ein normaler Funktionswert. Das Programm speichert ihn in `$triple`.

1. Das ist nur eine Funktion. Also nimmt `map` sie wie jeden Block. `map` benutzt sie für jedes Element von `1..4`. Das Ergebnis ist `(3 6 9 12)`.

{% include nav.html %}
