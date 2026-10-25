---
title: 'Solution: Разстояние на пътуване*'
---

{% include menu.html %}

Файлът [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) съдържа хеш от хешове. Тази структура от данни има повтарящи се данни, но е много удобна. Можете да я използвате, за да получите разстоянието между всеки два града.

Останалата част от програмата е цикъл. Той минава през всички части на маршрута и събира общото разстояние.

## Код

Ето решението, в което има само част от големия набор от данни.

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

🦋 Намерете програмата с цялата структура от данни във файла [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Резултат

По-долу е изходът на програмата за дадения маршрут. Опитайте други маршрути през градовете, които са в хеша `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
