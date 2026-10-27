---
title: Metamethodi
translations_gpt:
---

{% include menu.html %}

_Metamethodum_ per `.^` vocas, non per `.`. Ordinarium `.method` methodum obiecti exsequitur. Sed `.^method` alia res est. Methodum **metaobiecti** obiecti vocat. Metaobiectum est obiectum quod genus describit. Itaque vocatio de genere interrogat. Non ut genus agit.

Iam `.^name` nosti. Nomen generis reddit:

```raku
say 42.^name; # Int
```

Aliae metamethodi formam generis ostendunt. `.^attributes` attributa eius enumerat. `.^find_method` tibi dicit an methodus adsit:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` _ordinem resolutionis methodorum_ reddit. Haec est catena generum. Raku methodum in quoque eorum quaerit, hoc ordine. Est linea hereditatis classis:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` ab `A` heredat. Tandem omne genus ab `Any` et `Mu` heredat. Methodum in `B` vocas. Tum Raku eam per hanc ipsam semitam quaerit. Hae metamethodi genera tua in data vertunt. Haec data formam generum ostendunt. De eis interrogare potes dum programma currit.

{% include nav.html %}
