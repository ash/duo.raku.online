---
title: 'Solvo: Sumo kun la sigelo `&`'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Vi povas trovi la fontkodon en la dosiero [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Eligo

```
5
```

## Komentoj

1. La pinta bloko havas du parametrojn, `-> $a, $b`. Tial la anonima subrutino bezonas du argumentojn.

1. La variablo estas deklarita kun la sigelo `&`. Do vi povas voki ĝin kiel `add(2, 3)`, ĝuste kiel nomitan subrutinon. En la voko vi bezonas neniun sigelon. Tio donas `5`.

{% include nav.html %}
