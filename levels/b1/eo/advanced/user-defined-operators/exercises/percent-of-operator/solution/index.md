---
title: 'Solvo: Procent-de operatoro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La operatoro prenas la procentaĵon `$p` kiel sian maldekstran operandon. Ĝia dekstra operando estas la tuta kvanto, `$whole`.

1. Multipliki `$whole` per `$p` kaj dividi per `100` donas la parton, kiun ni bezonas. Ĉi tie, `150 * 20 / 100` estas `30`.

{% include nav.html %}
