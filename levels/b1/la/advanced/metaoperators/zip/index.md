---
title: Zip meta-operatores
translations_gpt:
---

{% include menu.html %}

Meta-operator zip `Z` duas vel plures listas accipit. Elementa earum per positionem in paria coniungit:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Eventus est lista gregum. Primus grex primum elementum cuiusque listae habet. Proximus grex secunda elementa habet, et ita porro.

Etiam callidius, `Z` cum operatore coniungere potes qui in quoque pari agit. Exempli gratia, `Z+` elementa per positionem addit:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Hic meta-operator zip operatorem `+` involvit. Computat `1 + 10`, `2 + 20` et `3 + 30`. Eodem modo `Z*` elementa sibi respondentia multiplicat:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Et `Z~` fila sibi respondentia coniungit:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
