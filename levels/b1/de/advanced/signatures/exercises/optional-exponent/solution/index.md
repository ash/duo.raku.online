---
title: 'Solution: Ein optionaler Exponent'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Den Quellcode finden Sie in der Datei [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Ausgabe

```
25
125
```

## Kommentare

1. Das `?` nach `$exp` macht den Parameter optional. Deshalb können Sie `power` auch nur mit der Basis aufrufen.

1. Wenn `$exp` fehlt, ist der Parameter undefiniert, und `//` liefert den Ersatzwert `2`. Also quadriert `power(5)` die Basis und ergibt `25`. Mit einem Exponenten, wie in `power(5, 3)`, wird stattdessen dieser Wert verwendet. Das Ergebnis ist `125`.

{% include nav.html %}
