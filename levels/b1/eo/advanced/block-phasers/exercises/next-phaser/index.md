---
title: Post ĉiu paŝo
translations_gpt:
---

{% include menu.html %}

## Problemo

La fazilo `NEXT` ruliĝas ĉe la *fino* de ĉiu paŝo de buklo. Tio estas bona momento por raporti la progreson.

Tenu en `$sum` sumon, kiu kreskas dum la buklo ruliĝas. Ĝi komenciĝas ĉe `0`. Buklu tra `1..3`, kaj ĉe ĉiu paŝo unue aldonu la aktualan numeron al `$sum`. Poste uzu fazilon `NEXT` por presi `sum so far: $sum` post ĉiu paŝo.

Atentu pri la ordo. La fazilo `NEXT` ruliĝas post la korpo. Do la sumo, kiun ĝi montras, *inkluzivas* la aktualan numeron.

## Ekzemplo

La programo presas:

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
