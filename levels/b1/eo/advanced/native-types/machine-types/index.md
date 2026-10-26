---
title: Maŝin-nivelaj tipoj
translations_gpt:
---

{% include menu.html %}

La nomoj de la indiĝenaj tipoj estas per minusklaj literoj: `int`, `num` kaj `str`. Vi uzas ilin por deklari variablon, same kiel `Int` aŭ `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Indiĝena valoro rekte kongruas kun maŝina registro aŭ vorto. Ĝi ne havas envolvan objekton, kiun normala Raku-valoro ĉiam havas. Tio faras indiĝenajn tipojn pli rapidaj kaj pli malgrandaj en la memoro. Tio gravas en mallongaj bukloj, kiuj faras multajn kalkulojn, kaj en grandaj tabeloj.

Unu aferon vi sciu tuj: indiĝena variablo neniam povas esti nedefinita. Ordinara `Int`-variablo komenciĝas kiel la nedefinita `(Int)`. Indiĝena `int`, tamen, komenciĝas je **nulo**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

La samo validas por indiĝenaj tabeloj. Vi deklaras ilin, metante la indiĝenan tipon antaŭ la `@`-variablon:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Tia tabelo konservas siajn elementojn kiel krudajn maŝinajn entjerojn, ne kiel enkastitajn `Int`-objektojn. Do ĝi uzas malpli da memoro. Kiam vi demandas indiĝenan valoron pri ĝi mem, Raku aŭtomate _enkastas_ ĝin. Ĝi metas la valoron en la respondan plenan tipon. Tial `(my int $b).WHAT` montras `(Int)`.

{% include nav.html %}
