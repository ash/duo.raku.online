---
title: 'Solvo: Potencoj de du'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La tri valoroj ĉe la komenco estas `1, 2, 4`. Ili kreskas per multipliko. Do `...` vidas geometrian sekvencon. La fina punkto estas `Inf`. Do la sekvenco neniam haltas per si mem.

1. `head(8)` prenas nur la unuajn ok valorojn. La sekvenco estas maldiligenta. Do Raku neniam faras la aliajn valorojn. Nur pro tio vi povas sekure skribi senliman sekvencon.

{% include nav.html %}
