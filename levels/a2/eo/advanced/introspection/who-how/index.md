---
title: '`WHO` kaj `HOW`'
translations_gpt:
---

{% include menu.html %}

Du pliaj iloj por introspekto estas `HOW` kaj `WHO`. Ili kompletigas la aron.

## `HOW`

Ĉiu valoro en Raku havas _metaobjekton_ malantaŭ si. Metaobjekto estas objekto. Ĝi scias, kiel funkcias la tipo de la valoro. `HOW` estas mallongigo de _Higher Order Workings_. Ĝi redonas la metaobjekton:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Vi jam uzas la metaobjekton. Eble vi ne rimarkis tion. La `.^` en `.^name` estas metod-alvoko. Ĉi tiu alvoko iras tra `HOW`. Ĉi tiuj du linioj faras la samon:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Do `$x.^name` estas nur mallonga maniero skribi `$x.HOW.name($x)`. Notu, ke la objekto denove eniras kiel argumento. Kial? Ĉiuj valoroj de tipo *kunhavas* unu metaobjekton. La metodoj de la metaobjekto estas meta-metodoj. Meta-metodo devas scii, pri kiu objekto vi demandas. La formo `.^` transdonas la objekton por vi. Por `name`, Raku ne uzas ĉi tiun argumenton. Sed la ĝusta, ĝenerala maniero estas transdoni ĝin. Kelkaj meta-metodoj ja uzas ĝin.

Tio estas vera ankaŭ por aliaj meta-metodoj. Unu ekzemplo estas `.^methods`. Ĝi donas liston de metodoj. Vi povas voki ĉi tiujn metodojn sur la valoro.

## `WHO`

`WHO` redonas la _pakon_ de nomo. Ĝi estas tabelo de la nomoj, aŭ simboloj, en tiu nomspaco:

```raku
say Int.WHO.^name; # Stash
```

`Stash` estas hako por tabelo de simboloj. Ĝi estas utila kun moduloj. Per ĝi, vi povas serĉi la nomojn de modulo. Ni revenas al ĝi en [la sekcio pri moduloj](/eo/advanced/module-introspection). Por nun, simple memoru, ke `WHO` ekzistas. Memoru ankaŭ, kion ĝi donas al vi.

{% include nav.html %}
