---
title: Reisedistanz*
---

{% include menu.html %}

## Problem

Schreibe ein Programm, das die Gesamtdistanz einer Reise berechnet. Die Städte der Reise stehen in diesem Array:

```raku
my @itinerary = < Berlin Prag Wien Zürich Paris >;
```

Gib die Distanz für jeden Teil der Route aus und auch die Gesamtdistanz.

Verwende die Datei [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Sie enthält einen _Hash von Hashes_ mit den Distanzen zwischen den Städten.

## Beispiel

Für die gegebene Liste von Städten gibt das Programm Folgendes aus:

```console
$ raku travel-distance.raku
Berlin — Prag: 354 km
Prag — Wien: 312 km
Wien — Zürich: 784 km
Zürich — Paris: 557 km
Gesamte Reise: 2007 km
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
