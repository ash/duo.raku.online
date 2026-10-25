---
title: Itinera distantia
---

{% include menu.html %}

## Problema

Scribe programma. Totam distantiam itineris invenit. Iter per urbes in hoc array it:

```raku
my @itinerary = < Berolinum Praga Vindobona Turicum Lutetia >;
```

Imprime distantiam cuiusque partis itineris. Deinde totam distantiam imprime.

Utere fasciculo [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Habet _hash hashium_. Hic hash distantias inter urbes servat.

## Exemplum

Pro hoc indice urbium, programma hoc imprimit:

```console
$ raku travel-distance.raku
Berolinum — Praga: 354 km
Praga — Vindobona: 312 km
Vindobona — Turicum: 784 km
Turicum — Lutetia: 557 km
Totum iter: 2007 km
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
