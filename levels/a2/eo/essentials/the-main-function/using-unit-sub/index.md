---
title: 'Uzante `unit sub`'
---

{% include menu.html %}

Per `unit sub`, la resto de la dosiero fariĝas la korpo de la funkcio! Tio estas tre utila kun `MAIN`. Sen ĝi, kurbaj krampoj ĉirkaŭas preskaŭ la tutan dosieron. Per `unit sub`, vi ne bezonas ĉi tiujn krampojn. Ankaŭ, la linioj ne bezonas kromajn spacojn ĉe la komenco.

Jen ekzempla programo kun `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "La sumo de $a kaj $b estas $sum.";
```

En ĉi tiu dosiero, `MAIN` estas la sola funkcio. Ĉu tio veras ankaŭ por via programo? Tiam provu uzi `unit sub MAIN`, kiel en la supra ekzemplo.

{% include nav.html %}
