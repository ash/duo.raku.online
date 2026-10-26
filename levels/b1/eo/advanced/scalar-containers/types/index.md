---
title: Datentipoj kaj skalaraj ujoj
---

{% include menu.html %}

Jen programo, kiu uzas unu variablon por diversaj specoj de datumoj. Ni uzas `dd` por vidi, kio estas en la ujo en ĉiu paŝo. Ĉi tiu ekzemplo nur montras la ideon. Ni ne rekomendas ĉi tiun stilon de programado.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Ĉiu voko de `dd` montras, kio estas en la variablo `$value` en tiu momento:

```
$value = Any
$value = 42
$value = "forty-two"
```

Komence, la variablo estas malplena, kaj `dd` montras ĝian valoron kiel `Any`. Tio estas la nedifinita baza valoro, kun kiu ĉiu netipigita ujo komenciĝas. Post la asignoj, `dd` montras la entjeron kaj poste la ĉenon.

Notu, ke `dd` ne presas tipon antaŭ la nomo ĉi tie. Netipigita ujo ne estas ligita al iu tipo, do nur la valoro estas montrata. La sekva temo montras, ke [ujo kun deklarita tipo](/eo/advanced/scalar-containers/type-constraints) kondutas alie.

{% include nav.html %}
