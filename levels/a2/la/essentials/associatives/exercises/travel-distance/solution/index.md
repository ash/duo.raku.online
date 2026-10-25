---
title: 'Solutio: Itinera distantia'
---

{% include menu.html %}

Archivum [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) hash hashorum habet. Haec structura datae paulo plura data habet quam necesse est. Quaeque distantia bis in ea est. Sed structura valde utilis est. Cum ea distantiam inter quaslibet duas civitates accipere potes.

Reliquum programmatis est annulus. Per omnes partes itineris it. Etiam quamque distantiam ad summam addit.

## Codex

Hic est solutio. Copia datorum magna est. Tantum partem eius vides.

```raku
my %distance = 
    Amstelodamum => {
        Athenae => 3082,
        Berolinum => 648,
        # . . .
    },
    # . . .
    Turicum => {
        Amstelodamum => 861,
        Athenae => 2449,
        # . . .
    };

my @iter = < Berolinum Praga Vindobona Turicum Lutetia >;

my $total = 0;
for 0 .. @iter.elems - 2 -> $index {
    my $a = @iter[$index];
    my $ad = @iter[$index + 1];

    my $distantia = %distance{$a}{$ad};
    say "$a — $ad: $distantia km";
    $total += $distantia;
}

say "Totum iter: $total km";
```

🦋 Invenies programma cum tota structura datae in archivo [travel-distance.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/travel-distance.raku).

## Exitus

Hic est output programmatis pro hoc itinere. Tempta alia itinera per civitates in hash `%distance`.

```console
$ raku exercises/associatives/travel-distance.raku
Berolinum — Praga: 354 km
Praga — Vindobona: 312 km
Vindobona — Turicum: 784 km
Turicum — Lutetia: 557 km
Totum iter: 2007 km
```

{% include nav.html %}
