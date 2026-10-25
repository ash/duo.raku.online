---
title: 'Solutio: Itinera distantia'
---

{% include menu.html %}

Archivum [distances.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/travel-distance/distances.raku) hash hashorum continet. Haec structura datae quaedam data repetita habet, sed valde utilis est. Ea uti potes ut distantiam inter quaslibet duas civitates accipias.

Reliquum programmatis est annulus. Per omnes partes itineris it et totam distantiam computat.

## Codex

Hic est solutio, cum tantum parte magnae copiae datorum.

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

Infra est output programmatis pro dato itinere. Tempta alias vias per civitates quae in hash `%distance` sunt.

```console
$ raku exercises/associatives/travel-distance.raku
Berolinum — Praga: 354 km
Praga — Vindobona: 312 km
Vindobona — Turicum: 784 km
Turicum — Lutetia: 557 km
Totum iter: 2007 km
```

{% include nav.html %}
