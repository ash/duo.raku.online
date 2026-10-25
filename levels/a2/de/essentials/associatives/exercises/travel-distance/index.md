---
title: Reisedistanz*
---

{% include menu.html %}

## Problem

Schreibe ein Programm. Es berechnet die gesamte Distanz einer Reise. Die Reise geht durch die Städte in diesem Array:

```raku
my @itinerary = < Berlin Prag Wien Zürich Paris >;
```

Gib die Distanz für jeden Teil der Reise aus. Dann gib die gesamte Distanz aus.

Verwende die Datei [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Sie enthält einen _Hash von Hashes_. Der Hash speichert die Distanzen zwischen den Städten.

## Beispiel

Für diese Liste von Städten gibt das Programm das hier aus:

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
