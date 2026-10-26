---
title: '`WHO` kaj `HOW`'
translations_gpt:
---

{% include menu.html %}

La lastaj du introspektaj iloj en la aro estas `HOW` kaj `WHO`.

## `HOW`

Malantaŭ ĉiu valoro en Raku, estas _metaobjekto_. Ĝi estas objekto, kiu scias, kiel funkcias la tipo de la valoro. `HOW`, kiu estas mallongigo de _Higher Order Workings_, redonas ĉi tiun metaobjekton:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Fakte, vi uzis la metaobjekton la tutan tempon, eble sen rimarki tion. La `.^` en `.^name` estas metod-alvoko, kiu iras tra `HOW`. Ĉi tiuj du linioj faras la samon:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Do `$x.^name` estas nur pli mallonga maniero skribi `$x.HOW.name($x)`. Notu, ke la objekto denove estas transdonita kiel argumento. Tio estas ĉar ĉiu valoro de la tipo *kunhavas* la saman metaobjekton. Do oni devas diri al meta-metodo, pri kiu objekto vi demandas. La formo `.^` faras tion por vi aŭtomate. Por `name`, la argumento fakte estas ignorata. Sed transdoni ĝin estas la ĝusta, ĝenerala formo, ĉar kelkaj meta-metodoj ja uzas ĝin.

La samo validas por aliaj meta-metodoj, kiujn vi eble vidos, ekzemple `.^methods`. Ĝi listigas la metodojn, kiujn vi povas voki sur valoro.

## `WHO`

`WHO` redonas la _pakon_, al kiu nomo apartenas. Ĝi estas la tabelo de simboloj, kiuj estas difinitaj en tiu nomspaco:

```raku
say Int.WHO.^name; # Stash
```

`Stash` estas hako, kiu tenas simbol-tabelon. Ĝi fariĝas utila, kiam vi laboras kun moduloj. Tiam ĝi permesas al vi serĉi la nomojn, kiujn modulo difinas. Ni revenos al ĝi en [la sekcio pri moduloj](/eo/advanced/module-introspection). Por nun, sufiĉas scii, ke `WHO` ekzistas, kaj kion ĝi redonas.

{% include nav.html %}
