---
title: 'Risinājums: Ceļošanas attālums'
---

{% include menu.html %}

Failā [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) ir hash tabula ar hash tabulām. Šajā datu struktūrā ir mazliet vairāk datu, nekā vajag. Katrs attālums tajā ir divas reizes. Bet šī struktūra ir ļoti noderīga. Ar to jūs varat iegūt attālumu starp jebkurām divām pilsētām.

Pārējā programmas daļa ir cikls. Tas iet cauri visām ceļojuma daļām. Tas arī pieskaita katru attālumu kopsummai.

## Kods

Šeit ir risinājums. Datu kopums ir liels. Jūs redzat tikai tā daļu.

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

Šeit ir programmas izvade šim ceļojumam. Izmēģiniet citus ceļojumus caur pilsētām `%distance` hash tabulā.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
