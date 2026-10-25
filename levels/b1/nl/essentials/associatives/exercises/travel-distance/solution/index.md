---
title: 'Solution: Reisafstand*'
---

{% include menu.html %}

Het bestand [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) bevat een hash van hashes. Deze datastructuur bevat wat dubbele data, maar is wel heel handig. Je kunt hem gebruiken om de afstand tussen elk paar steden te krijgen.

De rest van het programma is een lus. Die gaat langs alle delen van de route en telt de totale afstand op.

## Code

Hier is de oplossing, met maar een deel van de grote dataset.

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

Hieronder staat de uitvoer van het programma voor de gegeven route. Probeer andere routes langs de steden die in de `%distance` hash staan.

```console
$ raku exercises/associatives/travel-distance.raku
Berlijn — Praag: 354 km
Praag — Wenen: 312 km
Wenen — Zürich: 784 km
Zürich — Parijs: 557 km
Totale reis: 2007 km
```

{% include nav.html %}
