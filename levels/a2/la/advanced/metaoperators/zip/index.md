---
title: Zip meta-operatores
translations_gpt:
---

{% include menu.html %}

Meta-operator zip `Z` duas listas accipit, vel plures. Elementa earum per positionem coniungit:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Eventus est lista gregum. Primus grex primum elementum cuiusque listae habet. Secundus grex secundum elementum cuiusque listae habet, et ita porro.

Est etiam modus callidior. `Z` cum operatore adhibere potes. Tum operator in quoque pari agit. Exempli gratia, `Z+` elementa in eisdem positionibus addit:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Hic meta-operator zip cum operatore `+` operatur. Computat `1 + 10`, `2 + 20` et `3 + 30`. Eodem modo `Z*` elementa in eisdem positionibus multiplicat:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Et `Z~` fila in eisdem positionibus coniungit:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
