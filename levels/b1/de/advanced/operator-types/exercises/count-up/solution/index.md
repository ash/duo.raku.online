---
title: 'Solution: Hochzählen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Den Quellcode finden Sie in der Datei [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Ausgabe

```
9
10
```

## Kommentare

1. `++` ist ein Postfix-Operator, das heißt, er steht nach seinem Operanden. In einem Ausdruck liefert `$n++` zuerst den *alten* Wert `9`. Diesen Wert gibt `say` aus. Erst dann erhöht er die Variable.

1. Die zweite Zeile zeigt, dass `$n` wirklich `10` geworden ist. Die Präfix-Form `++$n` würde zuerst eins addieren und dann `10` zurückgeben.

{% include nav.html %}
