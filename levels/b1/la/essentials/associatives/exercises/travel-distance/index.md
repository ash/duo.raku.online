---
title: Itinera distantia
---

{% include menu.html %}

## Problema

Scribe programma quod totam distantiam itineris invenit. Urbes itineris in hoc array sunt:

```raku
my @itinerary = < Berolinum Praga Vindobona Turicum Lutetia >;
```

Imprime distantiam pro quaque parte viae, et etiam totam distantiam.

Utere fasciculo [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Continet _hash hashium_ cum distantiis inter urbes.

## Exemplum

Pro dato indice urbium, programma sequentia imprimit:

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
