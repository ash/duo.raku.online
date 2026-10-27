---
title: Metamethodi
translations_gpt:
---

{% include menu.html %}

_Metamethodus_ per `.^` loco `.` vocatur. Ordinarium `.method` methodum obiecti exsequitur. Sed `.^method` methodum in **metaobiecto** obiecti vocat. Itaque de genere interrogat, non ut genus agit.

Iam `.^name` vidisti, quae nomen generis reddit:

```raku
say 42.^name; # Int
```

Aliae metamethodi structuram generis inspiciunt. `.^attributes` attributa eius enumerat, et `.^find_method` tibi dicit an methodus exsistat:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` _ordinem resolutionis methodorum_ reddit. Haec est catena generum quam Raku ordine perquirit ut methodum inveniat. Est linea hereditatis classis:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` ab `A` heredat, et tandem omne genus ab `Any` et `Mu` heredat. Itaque Raku methodum obiecti `B` per illam ipsam semitam quaerit. Hae metamethodi structuram generum tuorum in data vertunt. De his datis tempore exsecutionis interrogare potes.

{% include nav.html %}
