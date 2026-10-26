---
title: Introspekto de ujoj
translations_gpt:
---

{% include menu.html %}

_Introspekto_ signifas demandi valoron aŭ ujon pri si mem. Vi povas demandi pri ĝia tipo, pri la ujo malantaŭ ĝi, aŭ pri tio, kiel ĝi funkcias interne. Vi jam uzis unu introspektan ilon, `.^name`, kiu presas la tipon de valoro.

Raku havas malgrandan familion de tiaj iloj, kaj iliaj nomoj estas en grandaj literoj: `WHAT`, `VAR`, `WHO` kaj `HOW`. Oni foje nomas ilin _pseŭdo-metodoj_. Tio estas ĉar la kompililo donas al ili specialan signifon. Ĝi ne traktas ilin kiel ordinarajn metodojn. Ĉi tiu sekcio rigardas ĉiun el ili.

Por rememorigi, jen denove `.^name`. Ĉi tiu ujo ne havas tiplimigon, kaj ni konservas diversajn valorojn en ĝi. `.^name` montras, kiel ĝia tipo ŝanĝiĝas:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Komence la ujo estas `Any`. Poste ĝi montras la tipon de la valoro, kiun ĝi tenas en tiu momento.

{% include nav.html %}
