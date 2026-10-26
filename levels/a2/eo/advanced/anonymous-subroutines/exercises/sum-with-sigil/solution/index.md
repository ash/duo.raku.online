---
title: 'Solvo: Sumo kun la sigelo `&`'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La pinta bloko havas du parametrojn: `-> $a, $b`. Do la anonima subrutino prenas du argumentojn.

1. La variablo havas la sigelon `&`. Do vi povas voki ĝin kiel `add(2, 3)`. Ĝi funkcias kiel ordinara subrutino kun nomo. Vi ne skribas la sigelon en la voko. La rezulto estas `5`.

{% include nav.html %}
