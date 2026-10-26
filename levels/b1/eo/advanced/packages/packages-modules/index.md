---
title: Pakoj kaj moduloj
translations_gpt:
---

{% include menu.html %}

La ŝlosilvorto `package` kreas nomspacon. Ĉio, kion oni deklaras en ĝi per `our`, fariĝas parto de tiu nomspaco. De ekstere, vi povas atingi ĉi tiujn nomojn per la nomo de la pako kaj la apartigilo `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Vi atingas la variablon kiel `$Maths::pi`. Ĝi havas la sigelon, poste la nomon de la pako, poste la nomon de la variablo. Subrutino estas vokata kiel `Maths::double(...)`.

Kaj `package` kaj `module` kreas nomspacon, sed ili diferencas en tio, kion alian ili faras. `module` estas la kutima elekto por reuzebla kodo. Simpla `package` estas nur la nomspaco, sen io kroma. `class`, kiun vi renkontos en [la sekva parto](/eo/oop), ankaŭ kreas nomspacon. Krome, ĝi aldonas ĉion, kion vi bezonas por objekt-orientita programado.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Do `module` donas al vi la saman nomspacon, kiun donas simpla `package`. Kiun vi elektas, dependas ĉefe de tio, kion vi volas fari. Uzu `module` por bibliotekoj kaj `package` por simpla nomspaco. Poste, kiam vi atingos objektojn, uzu `class` por tipoj.

{% include nav.html %}
