---
title: 'Solution: Разстояние на пътуване*'
---

{% include menu.html %}

Файлът [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) съдържа хеш от хешове. Тази структура от данни има малко повече данни, отколкото ѝ трябват. Всяко разстояние е в нея два пъти. Но структурата е много полезна. С нея можете да получите разстоянието между всеки два града.

Останалата част от програмата е цикъл. Той минава през всички части на пътуването. Също така той добавя всяко разстояние към общата сума.

## Код

Ето решението. Наборът от данни е голям. Виждате само част от него.

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

Ето изхода на програмата за това пътуване. Опитайте други пътувания през градовете в хеша `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
