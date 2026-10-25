---
title: Разстояние на пътуване*
---

{% include menu.html %}

## Проблем

Напишете програма, която намира общото разстояние на едно пътуване. Градовете от пътуването са в този масив:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Отпечатайте разстоянието за всяка част от маршрута, а също и общото разстояние.

Използвайте файла [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Той съдържа _хеш от хешове_ с разстоянията между градовете.

## Пример

За дадения списък с градове програмата отпечатва следното:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Общо пътуване: 2007 km
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
