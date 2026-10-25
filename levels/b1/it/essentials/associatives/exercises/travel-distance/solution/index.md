---
title: 'Solution: Distanza di viaggio*'
---

{% include menu.html %}

Il file [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) contiene un hash di hash. Questa struttura dati ha alcuni dati ripetuti, ma è molto comoda. Puoi usarla per trovare la distanza tra due città qualsiasi.

Il resto del programma è un ciclo. Passa per tutte le parti del percorso e somma la distanza totale.

## Codice

Ecco la soluzione, con solo una parte del grande set di dati.

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

🦋 Trova il programma con l'intera struttura dati nel file [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Output

Qui sotto c'è l'output del programma per il percorso dato. Prova altri percorsi tra le città che sono nell'hash `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
