---
title: Відстань подорожі*
---

{% include menu.html %}

## Завдання

Напишіть програму, яка знаходить загальну відстань подорожі. Міста цієї подорожі є в такому масиві:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Виведіть відстань для кожної частини маршруту, а також загальну відстань.

Скористайтеся файлом [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). Він містить _хеш хешів_ з відстанями між містами.

## Приклад

Для заданого списку міст програма виводить ось що:

```console
$ raku travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
