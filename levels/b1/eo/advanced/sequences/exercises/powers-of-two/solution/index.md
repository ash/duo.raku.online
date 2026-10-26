---
title: 'Solvo: Potencoj de du'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 Vi povas trovi la fontkodon en la dosiero [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Eligo

```
(1 2 4 8 16 32 64 128)
```

## Komentoj

1. La tri komencaj valoroj `1, 2, 4` kreskas per multipliko. Do `...` vidas, ke tio estas geometria sekvenco. Ĉar la fina punkto estas `Inf`, ĝi neniam haltas per si mem.

1. `head(8)` prenas nur la unuajn ok valorojn. Ĉar la sekvenco estas maldiligenta, la aliaj valoroj neniam estas generataj. Tio estas la sola kialo, kial estas sekure skribi senliman sekvencon.

{% include nav.html %}
