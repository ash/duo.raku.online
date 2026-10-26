---
title: Aroj, sakoj kaj miksaĵoj
translations_gpt:
---

{% include menu.html %}

Krom tabeloj kaj hakoj, Raku havas kelkajn specialajn ujojn por kolektoj de valoroj. La plej simpla estas la `Set`. Ĝi estas kolekto de _distingaj_ valoroj sen aparta ordo. Ĉiu valoro estas aŭ en la aro aŭ ne, kaj ripetitaj valoroj estas ignorataj.

Vi kreas aron per la rutino `set`. Se valoro ripetiĝas, la aro konservas nur unu kopion:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Ni transdonis kvin nombrojn, sed la aro havas nur tri elementojn. Tio estas, ĉar `1` kaj `2` aperis pli ol unufoje.

La ĉefa demando, kiun vi faras al aro, estas, ĉu valoro estas en ĝi. La operatoro `∈`, kiun vi legas kiel «estas elemento de», redonas Boolean valoron:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Se vi volas resti ĉe simpla ASCII, skribu la saman operatoron kiel `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Poste, vi vidos, kiel kombini arojn. Vi ankaŭ renkontos sakojn kaj miksaĵojn, kiuj estas proksimaj parencoj de aroj.

{% include nav.html %}
