---
title: 'Solution: Відстань подорожі*'
---

{% include menu.html %}

Файл [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) містить хеш хешів. У цій структурі даних трохи більше даних, ніж потрібно. Кожна відстань є в ній двічі. Але ця структура дуже корисна. З нею ви можете отримати відстань між будь-якими двома містами.

Решта програми — це цикл. Він проходить по всіх частинах подорожі. Також він додає кожну відстань до загальної суми.

## Код

Ось рішення. Набір даних великий. Ви бачите лише його частину.

```raku
my %distance = 
    Amsterdam => {
        Athens => 3082,
        Berlin => 648,
        # . . .
    },
    # . . .
    Zurich => {
        Amsterdam => 861,
        Athens => 2449,
        # . . .
    };

my @itinerary = < Berlin Prague Vienna Zurich Paris >;

my $total = 0;
for 0 .. @itinerary.elems - 2 -> $index {
    my $from = @itinerary[$index];
    my $to = @itinerary[$index + 1];

    my $distance = %distance{$from}{$to};
    say "$from — $to: $distance km";
    $total += $distance;
}

say "Total trip: $total km";
```

🦋 Знайдіть програму з усією структурою даних у файлі [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Вивід

Ось вивід програми для цієї подорожі. Спробуйте інші подорожі через міста з хешу `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
