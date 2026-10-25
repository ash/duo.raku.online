---
title: Разстояние на пътуване*
---

{% include menu.html %}

## Проблем

Напишете програма. Тя намира общото разстояние на едно пътуване. Пътуването минава през градовете в този масив:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Отпечатайте разстоянието на всяка част от пътуването. След това отпечатайте общото разстояние.

Използвайте файла [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). В него има _хеш от хешове_. Хешът пази разстоянията между градовете.

## Пример

За този списък с градове програмата отпечатва това:

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
