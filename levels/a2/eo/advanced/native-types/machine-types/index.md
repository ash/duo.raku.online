---
title: Maŝin-nivelaj tipoj
translations_gpt:
---

{% include menu.html %}

La indiĝenaj tipoj havas nomojn per minusklaj literoj: `int`, `num` kaj `str`. Vi deklaras variablon per ili same kiel per `Int` aŭ `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Indiĝena valoro rekte kongruas kun maŝina registro aŭ vorto. Tiuj estas malgrandaj lokoj por datumoj en la komputilo. Normala Raku-valoro havas envolvan objekton ĉirkaŭ si. Indiĝena valoro ne havas envolvaĵon. Do indiĝenaj tipoj estas pli rapidaj kaj prenas malpli da memoro. Tio gravas en grandaj tabeloj. Ĝi ankaŭ gravas en mallongaj bukloj, kiuj multe kalkulas.

Unu aferon vi devas scii tuj. Indiĝena variablo neniam estas nedefinita. Ordinara `Int`-variablo komenciĝas kiel nedefinita. `say` montras ĝin kiel `(Int)`. Sed indiĝena `int` komenciĝas je **nulo**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

La samo validas por indiĝenaj tabeloj. Por deklari tian tabelon, skribu la indiĝenan tipon antaŭ la `@`-variablo:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Tia tabelo tenas siajn elementojn kiel simplajn maŝinajn entjerojn. Ili ne estas plenaj `Int`-objektoj. Do la tabelo uzas malpli da memoro. Vi povas demandi indiĝenan valoron pri ĝia tipo. Tiam Raku aŭtomate metas ĝin en la respondan plenan tipon. Ni diras, ke la valoro estas _enkastita_. Tial `(my int $b).WHAT` montras `(Int)`.

{% include nav.html %}
