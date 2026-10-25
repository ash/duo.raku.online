---
title: Tipitaj variabloj
---

{% include menu.html %}

En Raku, skalara variablo (aŭ skalara ujo) tenas unu solan objekton. Ĉi tiu objekto povas esti de malsamaj tipoj. Ekzemple, la sama variablo povas unue enhavi nombron kaj poste ŝnuron:

```raku
my $var = 42;
$var = 'Hello';
```

Jen alia ekzemplo, kiu miksas malsamajn datumtipojn en unu esprimo:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Ĉi tio verŝajne ne estas la plej bona kodpraktiko. Sed ĝi estas perfekte ĝusta Raku-programo.

Tamen, Raku lasas vin elekti, kion variablo rajtas teni. Vi trovos pli da detaloj en la temoj sube.

{% include nav.html %}
