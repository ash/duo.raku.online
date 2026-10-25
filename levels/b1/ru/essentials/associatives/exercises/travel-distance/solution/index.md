---
title: 'Решение: Расстояние путешествия*'
---

{% include menu.html %}

В файле [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) есть хэш хэшей. В этой структуре данных есть повторы, но она очень удобная. С её помощью можно узнать расстояние между любыми двумя городами.

Остальная часть программы — это цикл. Он проходит по всем частям маршрута и считает общее расстояние.

## Код

Вот решение, где показана только часть большого набора данных.

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

🦋 Найдите программу с полной структурой данных в файле [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Вывод

Ниже — вывод программы для данного маршрута. Попробуйте другие маршруты через города, которые есть в хэше `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
