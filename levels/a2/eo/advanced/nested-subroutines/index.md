---
title: Nestitaj subrutinaj
translations_gpt:
---

{% include menu.html %}

Vi povas difini subprogramon _ene de_ alia subprogramo. Tio estas nestita subprogramo. Ĝi estas normala subprogramo. Sed vi povas vidi kaj uzi ĝin nur ene de la ekstera subprogramo.

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

Ĉi tie, ni kreas `inner` ene de `outer`. Poste `outer` vokas ĝin. Tio funkcias. La nomo `inner` estas konata en la tuta korpo de `outer`.

Sed ekster `outer`, la nomo `inner` ne ekzistas. Ĉi tiu programo ne kompiliĝas:

```raku
sub outer {
    sub inner { 42 }
}

inner; # error: Undeclared routine: inner
```

Kelkfoje nur unu subprogramo bezonas helpantan subprogramon. Tiam nestado estas utila. Metu la helpanton ene de tiu subprogramo. Tio montras, ke la helpanto estas privata. Krome, neniu alia kodo povas voki ĝin erare.

{% include nav.html %}
