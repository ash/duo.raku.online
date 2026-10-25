---
title: Расстояние путешествия*
---

{% include menu.html %}

## Problem

Напишите программу. Она находит общее расстояние поездки. Поездка идёт через города из этого массива:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Выведите расстояние для каждой части поездки. Потом выведите общее расстояние.

Используйте файл [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). В нём есть _хэш хэшей_. Этот хэш хранит расстояния между городами.

## Example

Для этого списка городов программа выводит вот это:

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
