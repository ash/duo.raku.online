---
title: Vojaĝa distanco
---

{% include menu.html %}

## Problemo

Skribu programon. Ĝi trovas la tutan distancon de vojaĝo. La vojaĝo iras tra la urboj en ĉi tiu tabelo:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Presu la distancon de ĉiu parto de la vojaĝo. Poste presu la tutan distancon.

Uzu la dosieron [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Ĝi havas _haketon de haketoj_. La haketo tenas la distancojn inter la urboj.

## Ekzemplo

Por ĉi tiu listo de urboj, la programo presas ĉi tion:

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
