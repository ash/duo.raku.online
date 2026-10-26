---
title: Nestitaj subrutinaj
translations_gpt:
---

{% include menu.html %}

Subprogramo povas esti difinita _ene de_ alia subprogramo. Tia nestita subprogramo estas normala subprogramo. Sed ĝi estas videbla nur ene de la subprogramo, kiu enhavas ĝin.

```raku
sub outer {
    sub inner {
        say 'I am the inner subroutine';
    }

    inner;
}

outer;
```

La programo presas:

```
I am the inner subroutine
```

Ĉi tie, `inner` estas deklarita ene de `outer`, kaj `outer` vokas ĝin. Tio funkcias, ĉar vi povas uzi `inner` ie ajn en la korpo de `outer`.

Sed ekster `outer`, ne ekzistas nomo `inner`. Do la sekva programo ne kompiliĝas:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Nestado estas utila, kiam nur unu subprogramo bezonas helpantan subprogramon. Se vi tenas la helpanton interne, estas klare, ke ĝi estas privata detalo. Krome, neniu povas voki ĝin erare de alia loko.

{% include nav.html %}
