---
title: 'Solution: Quadrate'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my @squares = gather for 1..6 {
    take $_ ** 2 if $_ %% 2;
};

say @squares;
```

🦋 Du findest den Quellcode in der Datei [squares.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/squares.raku).

## Ausgabe

```
[4 16 36]
```

## Kommentare

1. Die Prüfung `if $_ %% 2` entscheidet, *ob* der Code einen Wert nimmt. `$_ ** 2` entscheidet, *was* er nimmt. Nur die geraden Zahlen `2`, `4`, `6` bestehen die Prüfung.

1. Ihre Quadrate sind `4`, `16`, `36`. Nur diese Werte gehen an `take`. Also sammelt `gather` genau diese Werte. Hier wählt ein `take` die Werte aus und ändert sie auch. Ein einfaches `map` kann das nicht so klar sagen.

{% include nav.html %}
