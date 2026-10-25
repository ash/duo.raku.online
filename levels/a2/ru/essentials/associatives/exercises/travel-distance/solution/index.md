---
title: 'Решение: Расстояние путешествия*'
---

{% include menu.html %}

В файле [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) есть хэш хэшей. В этой структуре данных немного больше данных, чем нужно. Каждое расстояние есть в ней два раза. Но эта структура очень удобная. С ней можно узнать расстояние между любыми двумя городами.

Остальная часть программы — это цикл. Он проходит по всем частям поездки. Ещё он прибавляет каждое расстояние к общей сумме.

## Код

Вот решение. Набор данных большой. Здесь вы видите только его часть.

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

Вот вывод программы для этой поездки. Попробуйте другие поездки через города из хэша `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
