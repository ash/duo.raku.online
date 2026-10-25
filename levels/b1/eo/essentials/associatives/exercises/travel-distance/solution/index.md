---
title: 'Solvo: Vojaĝa distanco'
---

{% include menu.html %}

La dosiero [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) enhavas haketon de haketoj. Ĉi tiu datumstrukturo havas kelkajn ripetitajn datumojn, sed ĝi estas tre oportuna. Vi povas uzi ĝin por ricevi la distancon inter ajnaj du urboj.

La resto de la programo estas buklo. Ĝi iras tra ĉiuj partoj de la itinero kaj sumigas la tutan distancon.

## Kodo

Jen la solvo, kun nur parto de la granda datumaro.

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

🦋 Trovu la programon kun la tuta datuma strukturo en la dosiero [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Eligo

Sube estas la eligo de la programo por la donita itinero. Provu aliajn itinerojn tra la urboj, kiuj estas en la haketo `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
