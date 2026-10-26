---
title: 'Solvo: Malfermita intervalo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
say (2, 4 ... *).head(4);
```

🦋 Vi povas trovi la fontkodon en la dosiero [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Eligo

```
(2 4 6 8)
```

## Komentoj

1. La komencaj valoroj `2, 4` difinas aritmetikan paŝon: ĉiu nova nombro estas je du pli granda. La sola `*` ĉe la fino signifas, ke la sekvenco neniam finiĝas.

1. `head(4)` prenas nur la unuajn kvar valorojn, `2, 4, 6, 8`. La sekvenco estas maldiligenta, do la senfina resto neniam estas kalkulata. Ĉi tie, la sola stelo signifas “kion ajn, sen supra limo”.

{% include nav.html %}
