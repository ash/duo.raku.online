---
title: 'Solution: Eine innere Summe'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Den Quellcode finden Sie in der Datei [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Ausgabe

```
14
```

## Kommentare

1. `compute` benutzt den verschachtelten Helfer `add` zweimal. `add(2, 3)` ergibt `5`, und `add(4, 5)` ergibt `9`.

1. Ihre Summe ist `14`. `compute` gibt diesen Wert zurück.

{% include nav.html %}
