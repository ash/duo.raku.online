---
title: Ceļošanas attālums
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu. Tā atrod ceļojuma kopējo attālumu. Ceļojums iet caur pilsētām šajā masīvā:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Izdrukājiet katras ceļojuma daļas attālumu. Tad izdrukājiet kopējo attālumu.

Izmantojiet failu [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Tajā ir _hash of hashes_. Šis hash glabā attālumus starp pilsētām.

## Piemērs

Šim pilsētu sarakstam programma izdrukā šo:

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
