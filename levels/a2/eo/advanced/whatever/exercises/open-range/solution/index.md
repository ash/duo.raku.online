---
title: 'Solvo: Malfermita intervalo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La unuaj valoroj, `2, 4`, difinas la paŝon. Ĉiu nombro estas je du pli granda ol la antaŭa. La stelo sola ĉe la fino signifas, ke la sekvenco neniam finiĝas.

1. `head(4)` prenas nur la unuajn kvar valorojn: `2, 4, 6, 8`. La sekvenco estas maldiligenta. Do Raku neniam kalkulas la senfinan reston. Ĉi tie, la stelo sola signifas “kion ajn, sen supra limo”.

{% include nav.html %}
