---
title: 'Solution: Absolutwert'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Den Quellcode finden Sie in der Datei [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Ausgabe

```
7
4
```

## Kommentare

1. Der erste Kandidat passt nur für negative Zahlen. Er gibt die Zahl mit dem anderen Vorzeichen zurück. Dieser Wert ist positiv.

1. Alle anderen Zahlen gehen an den zweiten Kandidaten. Das sind die Null und die positiven Zahlen. Der zweite Kandidat gibt den Wert so zurück, wie er ist.

{% include nav.html %}
