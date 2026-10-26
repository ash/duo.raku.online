---
title: Datentipoj kaj skalaraj ujoj
---

{% include menu.html %}

Ni rigardu programon. Ĝi uzas la saman variablon por diversaj specoj de datumoj. Ni uzas `dd` por vidi la datumojn en ĉiu paŝo. Ĉi tiu ekzemplo nur montras, kiel la aferoj funkcias. Ĝi ne estas bona maniero skribi programojn.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Ĉiu voko de `dd` montras la nunan valoron de `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

Komence, la variablo estas malplena. `dd` montras ĝian valoron kiel `Any`. Tio estas la nedifinita baza valoro. Ĉiu netipigita ujo komenciĝas kun ĝi. Post la asignoj, `dd` montras la entjeron. Poste ĝi montras la ĉenon.

Notu, ke `dd` ne presas tipon antaŭ la nomo ĉi tie. Netipigita ujo ne havas fiksan tipon. Do `dd` montras nur la valoron. [Ujo kun deklarita tipo](/eo/advanced/scalar-containers/type-constraints) funkcias alie. Vi vidos tion en la sekva temo.

{% include nav.html %}
