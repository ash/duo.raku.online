---
title: 'Solvo: Devigi la ordon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say 2 ** (3 + 1);
```

🦋 Vi povas trovi la fontkodon en la dosiero [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Eligo

```
16
```

## Komentoj

1. Sen la krampoj, `**` estas pli forta ol `+`. Tiam vi ricevas `(2 ** 3) + 1 = 9`.

1. La krampoj donas al la adicio pli altan prioritaton. Do Raku kalkulas `3 + 1` unue. La esprimo fariĝas `2 ** 4`, kaj tio estas `16`. Per krampoj, vi ĉiam povas ŝanĝi la normalan prioritaton.

{% include nav.html %}
