---
title: 'Solvo: Devigi fervoron'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Intervalo ĝis `Inf` ne povas esti komputata tuta samtempe, do ĝi estas maldiligenta. `.is-lazy` redonas `True`.

1. La prefikso `eager` igas Raku produkti liston tuj. Do la rezulto ne plu estas maldiligenta. `.is-lazy` redonas `False`. Tio estas la rekta malo de markado de listo kiel `lazy`.

1. Ne uzu `eager` kun intervalo, kiu ne havas finon. `eager 1 .. Inf` provas komputi ĉiun elementon samtempe. Do la programo simple blokiĝas kaj uzas pli kaj pli da memoro, ĝis oni mortigas ĝin. `eager` estas sekura nur kun listoj, pri kiuj vi scias, ke ili estas finitaj.

1. Ankaŭ la inverso funkcias. `lazy 1..3` markas eĉ mallongan, finitan intervalon kiel maldiligenta, do `.is-lazy` redonas `True`. La prefikso starigas la maldiligento-flagon, kiom ajn malgranda estas la listo. Listo ne devas esti senfina por esti maldiligenta.

{% include nav.html %}
