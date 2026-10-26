---
title: 'Solution: Ein optionaler Exponent'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Das `?` nach `$exp` macht den Parameter optional. Also können Sie `power` nur mit der Basis aufrufen.

1. Wenn Sie `$exp` weglassen, ist der Parameter undefiniert. Dann liefert `//` den Wert `2`. Also quadriert `power(5)` die Basis und bekommt `25`. Sehen Sie sich jetzt `power(5, 3)` an. Hier ist der Exponent da. Also nutzt der Code ihn und bekommt `125`.

{% include nav.html %}
