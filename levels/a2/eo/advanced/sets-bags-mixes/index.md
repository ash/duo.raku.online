---
title: Aroj, sakoj kaj miksaĵoj
translations_gpt:
---

{% include menu.html %}

Raku havas tabelojn kaj hakojn. Ĝi ankaŭ havas kelkajn specialajn ujojn por grupoj de valoroj. La plej simpla estas la `Set`. Ĝiaj valoroj estas _distingaj_, do ĉiu valoro diferencas de la aliaj. La valoroj en aro ne havas ordon. Valoro estas en la aro, aŭ ĝi ne estas. Se valoro venas dufoje, la aro ignoras la duan.

Por fari aron, uzu la rutinon `set`. Valoroj, kiuj ripetiĝas, fariĝas unu valoro:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Ni donas al la aro kvin nombrojn. Sed ĝi havas nur tri elementojn. Tio estas, ĉar `1` kaj `2` aperas pli ol unufoje.

Kutime vi faras al aro unu ĉefan demandon. Ĉu valoro estas en la aro? La operatoro `∈` respondas ĝin. Vi legas `∈` kiel «estas elemento de». Ĝi redonas Boolean valoron, `True` aŭ `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Eble vi volas uzi nur simplajn ASCII-signojn. Tiam skribu la saman operatoron kiel `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

La sekvaj temoj montras, kiel kombini arojn. Ili ankaŭ montras sakojn kaj miksaĵojn. Sakoj kaj miksaĵoj estas proksimaj parencoj de aroj.

{% include nav.html %}
