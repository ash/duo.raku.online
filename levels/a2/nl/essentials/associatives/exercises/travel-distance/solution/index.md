---
title: 'Solution: Reisafstand*'
---

{% include menu.html %}

Het bestand [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) bevat een hash van hashes. Deze datastructuur heeft wat meer data dan nodig is. Elke afstand staat er twee keer in. Maar de structuur is heel handig. Daarmee kun je de afstand tussen elk paar steden krijgen.

De rest van het programma is een lus. Hij gaat langs alle delen van de reis. Hij telt ook elke afstand op bij het totaal.

## Code

Hier is de oplossing. De dataset is groot. Je ziet er maar een deel van.

```raku
my %distance = 
    Amsterdam => {
        Athene => 3082,
        Berlijn => 648,
        # . . .
    },
    # . . .
    Zürich => {
        Amsterdam => 861,
        Athene => 2449,
        # . . .
    };

my @itinerary = < Berlijn Praag Wenen Zürich Parijs >;

my $totaal = 0;
for 0 .. @itinerary.elems - 2 -> $index {
    my $van = @itinerary[$index];
    my $naar = @itinerary[$index + 1];

    my $afstand = %distance{$van}{$naar};
    say "$van — $naar: $afstand km";
    $totaal += $afstand;
}

say "Totale reis: $totaal km";
```

🦋 Vind het programma met de volledige datastructuur in het bestand [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Uitvoer

Hier is de uitvoer van het programma voor deze reis. Probeer andere reizen langs de steden in de `%distance` hash.

```console
$ raku exercises/associatives/travel-distance.raku
Berlijn — Praag: 354 km
Praag — Wenen: 312 km
Wenen — Zürich: 784 km
Zürich — Parijs: 557 km
Totale reis: 2007 km
```

{% include nav.html %}
