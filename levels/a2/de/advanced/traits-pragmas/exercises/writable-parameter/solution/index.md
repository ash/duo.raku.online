---
title: 'Solution: Ein beschreibbarer Parameter'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Den Quellcode finden Sie in der Datei [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Ausgabe

```
42
```

## Kommentare

1. `is rw` verbindet den Parameter `$n` mit der Variablen `$score` des Aufrufers. Also ändert `$n *= 2` in `double` die Variable `$score` selbst. Darum gibt das Programm `42` aus.

1. Ohne `is rw` ist der Parameter schreibgeschützt. Dann gibt `$n *= 2` einen Fehler. Mit `is copy` bekommt `double` eine eigene Kopie des Werts. Die Subroutine kann diese Kopie ändern. Aber `$score` bleibt `21`.

{% include nav.html %}
