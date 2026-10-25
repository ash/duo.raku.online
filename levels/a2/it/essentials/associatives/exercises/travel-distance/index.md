---
title: Distanza di viaggio*
---

{% include menu.html %}

## Problema

Scrivi un programma. Trova la distanza totale di un viaggio. Il viaggio passa per le città di questo array:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Stampa la distanza di ogni parte del viaggio. Poi stampa la distanza totale.

Usa il file [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Contiene un _hash di hash_. L'hash tiene le distanze tra le città.

## Esempio

Per questa lista di città, il programma stampa questo:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
