---
title: Відстань подорожі*
---

{% include menu.html %}

## Завдання

Напишіть програму. Вона знаходить загальну відстань подорожі. Подорож іде через міста з цього масиву:

```raku
my @itinerary = < Berlin Prague Vienna Zurich Paris >;
```

Виведіть відстань кожної частини подорожі. Потім виведіть загальну відстань.

Використайте файл [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku). У ньому є _хеш хешів_. Цей хеш зберігає відстані між містами.

## Приклад

Для цього списку міст програма виводить таке:

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
