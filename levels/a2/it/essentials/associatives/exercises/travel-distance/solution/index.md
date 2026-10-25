---
title: 'Solution: Distanza di viaggio*'
---

{% include menu.html %}

Il file [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) contiene un hash di hash. Questa struttura dati ha un po' più dati del necessario. Ogni distanza c'è due volte. Ma la struttura è molto utile. Con questa struttura puoi trovare la distanza tra due città qualsiasi.

Il resto del programma è un ciclo. Passa per tutte le parti del viaggio. Aggiunge anche ogni distanza al totale.

## Codice

Ecco la soluzione. Il set di dati è grande. Ne vedi solo una parte.

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

Ecco l'output del programma per questo viaggio. Prova altri viaggi tra le città dell'hash `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prague: 354 km
Prague — Vienna: 312 km
Vienna — Zurich: 784 km
Zurich — Paris: 557 km
Total trip: 2007 km
```

{% include nav.html %}
