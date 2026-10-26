---
title: 'Solvo: Devigi fervoron'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Vi povas trovi la fontkodon en la dosiero [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Eligo

```
True
False
True
```

## Komentoj

1. Raku ne povas komputi la tutan intervalon ĝis `Inf` samtempe. Do la intervalo estas maldiligenta, kaj `.is-lazy` donas `True`.

1. La prefikso `eager` igas Raku produkti liston tuj. Do la rezulto ne plu estas maldiligenta, kaj `.is-lazy` donas `False`. Tio estas precize la malo de markado de listo kiel `lazy`.

1. Ne uzu `eager` kun intervalo, kiu ne havas finon. `eager 1 .. Inf` provas komputi ĉiun elementon samtempe. Do la programo simple blokiĝas. Ĝi neniam finiĝas. Ĝi uzas pli kaj pli da memoro. Tio daŭras, ĝis iu haltigas la programon. Uzu `eager` nur kun listoj, pri kiuj vi scias, ke ili havas finon.

1. Tio funkcias ankaŭ inverse. `lazy 1..3` markas mallongan intervalon kiel maldiligenta. Ĉi tiu intervalo havas finon, sed ĝi tamen estas maldiligenta. Do `.is-lazy` donas `True`. La prefikso faras ajnan liston maldiligenta, kiom ajn malgranda ĝi estas. Listo ne devas esti senfina por esti maldiligenta.

{% include nav.html %}
