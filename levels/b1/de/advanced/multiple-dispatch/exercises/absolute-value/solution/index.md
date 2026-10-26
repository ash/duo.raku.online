---
title: 'Solution: Absolutwert'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der erste Kandidat passt nur auf negative Zahlen. Er gibt den Wert mit dem umgekehrten Vorzeichen zurück, und dieser ist positiv.

1. Alle anderen Zahlen, also die Null und die positiven Zahlen, gehen an den zweiten Kandidaten. Er gibt den Wert ohne Änderung zurück.

{% include nav.html %}
