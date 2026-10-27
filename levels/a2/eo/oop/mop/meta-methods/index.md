---
title: Metametodoj
translations_gpt:
---

{% include menu.html %}

Vi vokas _metametodon_ per `.^`, ne per `.`. Normala `.method` rulas metodon de la objekto. `.^method` estas malsama. Ĝi vokas metodon de la **metaobjekto** de la objekto. Metaobjekto estas objekto, kiu priskribas tipon. Do la voko demandas pri la tipo. Ĝi ne agas kiel la tipo.

Vi jam konas `.^name`. Ĝi redonas la nomon de la tipo:

```raku
say 42.^name; # Int
```

Aliaj metametodoj montras, kiel tipo estas konstruita. `.^attributes` listigas ĝiajn atributojn. `.^find_method` diras al vi, ĉu metodo ekzistas:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` redonas la _ordon de metodserĉado_. Ĝi estas ĉeno de tipoj. Raku serĉas metodon en ĉiu el ili, en ĉi tiu ordo. Ĝi estas la linio de heredo de klaso:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` heredas de `A`. Finfine, ĉiu tipo heredas de `Any` kaj `Mu`. Vi vokas metodon sur `B`. Tiam Raku serĉas ĝin laŭ ĝuste ĉi tiu vojo. Ĉi tiuj metametodoj faras datumojn el viaj tipoj. Ĉi tiuj datumoj montras, kiel la tipoj estas konstruitaj. Vi povas demandi pri ili dum la programo ruliĝas.

{% include nav.html %}
