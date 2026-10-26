---
title: 'Solvo: Interna sumo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Ene de `compute`, la nestita `add` estas uzata dufoje: `add(2, 3)` estas `5`, kaj `add(4, 5)` estas `9`.

1. Ilia sumo, `14`, estas tio, kion `compute` redonas.

{% include nav.html %}
