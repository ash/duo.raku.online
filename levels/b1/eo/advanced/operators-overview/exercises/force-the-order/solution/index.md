---
title: 'Solvo: Devigi la ordon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Sen la krampoj, `**` ligus pli forte ol `+`, kaj vi ricevus `(2 ** 3) + 1 = 9`.

1. La krampoj levas la prioritaton de la adicio, do `3 + 1` estas kalkulata unue. La esprimo fariĝas `2 ** 4`, kio estas `16`. Per krampoj, vi ĉiam povas ŝanĝi la defaŭltan prioritaton.

{% include nav.html %}
