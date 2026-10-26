---
title: 'Solvo: Interna sumo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 Vi povas trovi la fontkodon en la dosiero [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Eligo

```
14
```

## Komentoj

1. `compute` uzas la nestitan `add` dufoje. `add(2, 3)` estas `5`, kaj `add(4, 5)` estas `9`.

1. Ilia sumo estas `14`. `compute` redonas ĉi tiun valoron.

{% include nav.html %}
