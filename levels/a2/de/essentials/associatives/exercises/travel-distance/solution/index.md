---
title: 'Solution: Reisedistanz*'
---

{% include menu.html %}

Die Datei [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) enthält einen Hash von Hashes. Diese Datenstruktur hat etwas mehr Daten, als sie braucht. Jede Entfernung steht zweimal darin. Aber die Struktur ist sehr nützlich. Damit bekommen Sie die Entfernung zwischen zwei beliebigen Städten.

Der Rest des Programms ist eine Schleife. Sie geht durch alle Teile der Reise. Sie addiert auch jede Distanz zur Gesamtsumme.

## Code

Hier ist die Lösung. Der Datensatz ist groß. Sie sehen nur einen Teil davon.

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

say "Gesamte Reise: $total km";
```

🦋 Finden Sie das Programm mit der gesamten Datenstruktur in der Datei [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Ausgabe

Hier ist die Ausgabe des Programms für diese Reise. Probieren Sie andere Reisen durch die Städte im Hash `%distance` aus.

```console
$ raku exercises/associatives/travel-distance.raku
Berlin — Prag: 354 km
Prag — Wien: 312 km
Wien — Zürich: 784 km
Zürich — Paris: 557 km
Gesamte Reise: 2007 km
```

{% include nav.html %}
