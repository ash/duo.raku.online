---
title: Dumpado de variabloj
---

{% include menu.html %}

Voku `dd` por vidi, kio estas en variablo. Vi uzas ĝin same kiel `say`:

```raku
my $var = 42;
dd $var;
```

`dd` presas kaj la valoron kaj la nomon de la variablo:

```console
$var = 42
```

Se la variablo havas deklaritan tipon, `dd` montras ankaŭ la tipon. Komparu la eligon de ĉi tiu programo kun la antaŭa:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Jen la ĉefa diferenco de `say`. Unu `dd`-voko sur skalaro diras al vi la nomon de la variablo. Ĝi ankaŭ diras al vi la tipon de la datumoj, kiam ĝi estas konata. Do vi povas aldoni plurajn `dd`-vokojn al programo. Vi ankoraŭ vidos, kiu eligo apartenas al kiu variablo.

Vi povas ankaŭ elmontri pli kompleksajn datumstrukturojn, ekzemple tabelojn aŭ hakojn. Tiam `dd` presas la valoron en kodosimila formo:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Notu, ke vi klare vidas la nestitan tabelon. Sed la nomo de la variablo ne estas presata. Same funkcias por hakoj, kaj `dd` presas iliajn ŝlosilojn en ordigita ordo:

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
