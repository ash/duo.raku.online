---
title: Metametodoj
translations_gpt:
---

{% include menu.html %}

_Metametodo_ estas vokata per `.^` anstataŭ `.`. La ordinara `.method` rulas metodon de la objekto. Sed `.^method` vokas metodon sur la **metaobjekto** de la objekto. Do ĝi demandas pri la tipo anstataŭ agi kiel la tipo.

Vi jam vidis `.^name`, kiu redonas la nomon de la tipo:

```raku
say 42.^name; # Int
```

Aliaj metametodoj rigardas la strukturon de tipo. `.^attributes` listigas ĝiajn atributojn, kaj `.^find_method` diras al vi, ĉu metodo ekzistas:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` redonas la _ordon de metodserĉado_. Ĝi estas la ĉeno de tipoj, kiun Raku traserĉas laŭvice por trovi metodon. Ĝi estas la hereda linio de klaso:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` heredas de `A`, kaj finfine ĉiu tipo heredas de `Any` kaj `Mu`. Do Raku serĉas metodon de `B` laŭ ĝuste tiu vojo. Ĉi tiuj metametodoj transformas la strukturon de viaj tipoj en datumojn. Vi povas demandi pri ĉi tiuj datumoj je rultempo.

{% include nav.html %}
