---
title: 'Exercise: Travel distance'
---

{% include menu.html %}

## Problem

Write a program that finds the total distance of a trip. The cities of the trip are in this array:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Print the distance for each part of the route, and also the total distance.

Use the file [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). It contains a _hash of hashes_ with the distances between the cities.

## Example

For the given list of cities, the program prints the following:

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
