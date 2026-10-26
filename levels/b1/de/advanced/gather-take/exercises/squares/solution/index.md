---
title: 'Solution: Quadrate'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Prüfung `if $_ %% 2` entscheidet, *ob* ein Wert genommen wird, und `$_ ** 2` entscheidet, *was* genommen wird. Nur die geraden Zahlen `2`, `4`, `6` bestehen diese Prüfung.

1. Ihre Quadrate `4`, `16`, `36` sind die einzigen Werte, die an `take` gehen. Also sammelt `gather` genau diese. Hier filtert ein `take` die Werte und ändert sie zugleich. Ein einfaches `map` kann das nicht so klar ausdrücken.

{% include nav.html %}
