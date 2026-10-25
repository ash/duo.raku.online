---
title: Reisafstand*
---

{% include menu.html %}

## Probleem

Schrijf een programma dat de totale afstand van een reis berekent. De steden van de reis staan in deze array:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Print de afstand voor elk deel van de route, en ook de totale afstand.

Gebruik het bestand [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Het bevat een _hash van hashes_ met de afstanden tussen de steden.

## Voorbeeld

Voor de gegeven lijst met steden print het programma het volgende:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Totale reis: 2007 km
```

## Oplossing

✅ [Zie de oplossing](solution)

{% include nav.html %}
