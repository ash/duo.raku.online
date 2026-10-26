---
title: 'Solution: Hochzählen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `++` ist ein Postfix-Operator. Er steht nach seinem Operanden. In einem Ausdruck gibt `$n++` zuerst den *alten* Wert, `9`. Diesen Wert gibt `say` aus. Erst danach addiert `++` 1 zur Variablen.

1. Die zweite Zeile zeigt, dass `$n` jetzt `10` ist. Die Präfix-Form `++$n` funktioniert anders. Sie addiert zuerst 1 und gibt dann `10` zurück.

{% include nav.html %}
