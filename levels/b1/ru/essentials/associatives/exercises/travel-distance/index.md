---
title: Расстояние путешествия*
---

{% include menu.html %}

## Problem

Напишите программу, которая находит общее расстояние поездки. Города поездки перечислены в этом массиве:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Выведите расстояние для каждой части маршрута, а также общее расстояние.

Используйте файл [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). В нём есть _хэш хэшей_ с расстояниями между городами.

## Example

Для данного списка городов программа выводит следующее:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Solution

✅ [См. решение](solution)

{% include nav.html %}
