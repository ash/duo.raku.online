---
title: Dumpado de variabloj
---

{% include menu.html %}

Por vidi la valoron de variablo, voku `dd`. Ĝi similas al `say`:

```raku
my $var = 42;
dd $var;
```

`dd` montras la valoron. Ĝi ankaŭ montras la nomon de la variablo:

```console
$var = 42
```

Variablo povas havi deklaritan tipon. Tiam `dd` montras ankaŭ la tipon. Komparu la eligon de ĉi tiu programo kun la antaŭa:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Jen la ĉefa diferenco de `say`. Voku `dd` unu fojon sur skalaro. Ĝi montras al vi la nomon de la variablo. Ĝi ankaŭ montras la tipon de la datumoj, se Raku konas ĝin. Do vi povas meti plurajn `dd`-vokojn en programon. Vi ankoraŭ scias, kiu eligo venas de kiu variablo.

Vi povas ankaŭ elmontri pli grandajn datumstrukturojn, kiel tabelojn aŭ hakojn. Tiam `dd` presas la valoron en formo kiel kodo:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Notu, ke vi klare vidas la internan tabelon. Sed `dd` ne presas la nomon de la variablo ĉi tie. Same funkcias kun hakoj. `dd` presas la ŝlosilojn de hako en ordigita ordo:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
