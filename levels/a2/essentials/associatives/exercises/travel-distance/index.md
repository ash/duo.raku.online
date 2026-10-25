---
title: 'Exercise: Travel distance'
---

{% include menu.html %}

## Problem

Write a program. It finds the total distance of a trip. The trip goes through the cities in this array:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Print the distance of each part of the trip. Then print the total distance.

Use the file [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). It has a _hash of hashes_. The hash keeps the distances between the cities.

## Example

For this list of cities, the program prints this:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Solution

✅ [See the solution](solution)

{% include nav.html %}
