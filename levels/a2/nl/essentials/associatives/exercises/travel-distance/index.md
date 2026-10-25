---
title: Reisafstand*
---

{% include menu.html %}

## Probleem

Schrijf een programma. Het berekent de totale afstand van een reis. De reis gaat langs de steden in deze array:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Print de afstand van elk deel van de reis. Print daarna de totale afstand.

Gebruik het bestand [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Het bevat een _hash van hashes_. De hash bewaart de afstanden tussen de steden.

## Voorbeeld

Voor deze lijst met steden print het programma dit:

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
