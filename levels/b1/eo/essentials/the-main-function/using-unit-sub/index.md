---
title: 'Uzante `unit sub`'
---

{% include menu.html %}

La konstruo `unit sub` estas tre oportuna. Ĝi igas la reston de la dosiero la korpo de la funkcio! Kun `MAIN`, ĝi permesas al vi forigi la kurbajn krampojn ĉirkaŭ preskaŭ la tuta dosiero. Vi ankaŭ ne bezonas la kroman enŝovon.

La sekva ekzempla programo montras, kiel uzi `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "La sumo de $a kaj $b estas $sum.";
```

En ĉi tiu dosiero, `MAIN` estas la sola funkcio. Se la samo veras por via programo, pensu pri uzado de `unit sub MAIN`, kiel montrite supre.

{% include nav.html %}
