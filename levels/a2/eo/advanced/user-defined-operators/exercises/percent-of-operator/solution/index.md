---
title: 'Solvo: Procent-de operatoro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Vi povas trovi la fontkodon en la dosiero [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Eligo

```
30
```

## Komentoj

1. La maldekstra operando de la operatoro estas la procentaĵo, `$p`. La dekstra operando estas la tuta kvanto, `$whole`.

1. Multipliku `$whole` per `$p`, kaj dividu per `100`. Tio donas la parton, kiun ni bezonas: `150 * 20 / 100` estas `30`.

{% include nav.html %}
