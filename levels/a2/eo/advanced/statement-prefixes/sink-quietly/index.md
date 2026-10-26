---
title: sink kaj quietly
translations_gpt:
---

{% include menu.html %}

Ekzistas du pliaj prefiksoj. Ili rulas kodon pro tio, kion ĝi faras. La valoro de la kodo ne estas grava.

La prefikso `sink` rulas kodon en _sink-kunteksto_. La kodo ruliĝas nur pro siaj flankefektoj. Raku forĵetas la rezulton. Tio estas utila kun maldiligenta operacio. Per `sink`, vi igas ĝin ruliĝi:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Ĉi tie ni rulas la `map` nur pro ĝia presado. `sink` certigas, ke ĝi vere ruliĝas. Poste `sink` forĵetas la liston de la `map`. Se nenio devigas ĝin, maldiligenta `map` eble tute ne ruliĝas. Tio povas okazi, kiam neniu uzas ĝian rezulton.

La prefikso `quietly` rulas blokon kaj **kaŝas ĝiajn avertojn**. Iu kodo kutime presas averton al la erara fluo. Ene de `quietly`, ĉi tiu kodo estas silenta:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Kutime Raku montras averton, kiam vi aldonas `1` al nedefinita `$value`. La averto temas pri "neinicialigita valoro". Ene de `quietly`, ĉi tiu averto estas kaŝita. Foje vi scias, ke via kodo donas averton. Vi ne volas ĉi tiun bruon. Tiam uzu `quietly`. Sed ne uzu ĝin ofte. Averto kutime montras veran eraron.

{% include nav.html %}
