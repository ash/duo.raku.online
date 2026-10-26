---
title: 'Solution: Ein beschreibbarer Parameter'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `is rw` bindet den Parameter `$n` an die Variable `$score` des Aufrufers. Also ändert `$n *= 2` in `double` die Variable `$score` selbst, und deshalb gibt das Programm `42` aus.

1. Ohne `is rw` wäre der Parameter schreibgeschützt, und `$n *= 2` würde einen Fehler auslösen. Mit `is copy` würde `double` stattdessen eine private Kopie zum Ändern bekommen. Dann würde `$score` unverändert bei `21` bleiben.

{% include nav.html %}
