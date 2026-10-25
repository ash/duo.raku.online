---
title: Distanza di viaggio*
---

{% include menu.html %}

## Problema

Scrivi un programma che trova la distanza totale di un viaggio. Le città del viaggio sono in questo array:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Stampa la distanza di ogni parte del percorso e anche la distanza totale.

Usa il file [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Contiene un _hash di hash_ con le distanze tra le città.

## Esempio

Per la lista di città data, il programma stampa il seguente output:

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
