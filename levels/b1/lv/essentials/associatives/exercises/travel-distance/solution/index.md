---
title: 'Risinājums: Ceļošanas attālums'
---

{% include menu.html %}

Failā [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) ir hash tabula ar hash tabulām. Šajā datu struktūrā daži dati atkārtojas, bet tā ir ļoti ērta. Jūs varat to izmantot, lai iegūtu attālumu starp jebkurām divām pilsētām.

Pārējā programmas daļa ir cikls. Tas iet cauri visām maršruta daļām un saskaita kopējo attālumu.

## Kods

Šeit ir risinājums, kurā ir tikai daļa no lielā datu kopuma.

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

🦋 Atrodiet programmu ar visu datu struktūru failā [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Izvade

Zemāk ir programmas izvade dotajam maršrutam. Izmēģiniet citus maršrutus caur pilsētām, kas ir `%distance` hash tabulā.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
