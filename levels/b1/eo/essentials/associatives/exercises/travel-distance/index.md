---
title: Vojaĝa distanco
---

{% include menu.html %}

## Problemo

Skribu programon, kiu trovas la tutan distancon de vojaĝo. La urboj de la vojaĝo estas en ĉi tiu tabelo:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Presu la distancon por ĉiu parto de la itinero, kaj ankaŭ la tutan distancon.

Uzu la dosieron [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Ĝi enhavas _haketon de haketoj_ kun la distancoj inter la urboj.

## Ekzemplo

Por la donita listo de urboj, la programo presas la jenon:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
