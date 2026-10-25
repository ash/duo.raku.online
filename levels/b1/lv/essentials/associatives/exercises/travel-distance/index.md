---
title: Ceļošanas attālums
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu, kas atrod ceļojuma kopējo attālumu. Ceļojuma pilsētas ir šajā masīvā:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Izdrukājiet katras maršruta daļas attālumu un arī kopējo attālumu.

Izmantojiet failu [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Tajā ir _hash of hashes_ ar attālumiem starp pilsētām.

## Piemērs

Dotajam pilsētu sarakstam programma izdrukā šādu izvadi:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
