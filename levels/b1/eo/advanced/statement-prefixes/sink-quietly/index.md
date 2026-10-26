---
title: sink kaj quietly
translations_gpt:
---

{% include menu.html %}

Du pliaj prefiksoj temas pri rulado de kodo pro ĝiaj efektoj, ne pro ĝia valoro.

La prefikso `sink` rulas ion en _sink-kunteksto_, tio estas, nur pro ĝiaj flankefektoj. La rezulto estas forĵetata. Tio estas utila, kiam vi volas devigi maldiligentan operacion ruliĝi:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Ĉi tie la `map` ruliĝas nur pro la presado, kiun ĝi faras. `sink` certigas, ke ĝi vere ruliĝas, kaj poste forĵetas la rezultan liston. Se nenio devigas ĝin, maldiligenta `map` eble tute ne ruliĝus. Tio povas okazi, kiam ĝia rezulto neniam estas uzata.

La prefikso `quietly` rulas blokon kun ĝiaj **avertoj malŝaltitaj**. Kodo, kiu kutime presas averton al la erara fluo, restas silenta:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Aldoni `1` al nedefinita `$value` kutime donas averton pri neinicialigita valoro. Ene de `quietly`, ĉi tiu averto estas kaŝita. Uzu ĝin, kiam vi scias, ke iu kodo avertas, kaj vi ne volas la bruon. Sed uzu ĝin malofte, ĉar avertoj kutime montras veran eraron.

{% include nav.html %}
