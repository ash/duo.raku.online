---
title: Introspekto de ujoj
translations_gpt:
---

{% include menu.html %}

_Introspekto_ signifas, ke vi demandas valoron aŭ ujon pri si mem. Vi povas demandi pri ĝia tipo. Vi povas demandi pri la ujo malantaŭ ĝi. Vi ankaŭ povas demandi, kiel Raku igas ĝin funkcii interne. Vi jam konas unu ilon por introspekto, `.^name`. Ĝi presas la tipon de valoro.

Raku havas malgrandan grupon de tiaj iloj. Iliaj nomoj havas grandajn literojn: `WHAT`, `VAR`, `WHO` kaj `HOW`. Oni foje nomas ilin _pseŭdo-metodoj_. Ili aspektas kiel metodoj. Sed ili ne estas normalaj metodoj. La kompililo donas al ili specialan signifon. Ĉi tiu sekcio rigardas ĉiun el ili.

Jen rememorigo pri `.^name`. La ujo en ĉi tiu kodo ne havas fiksan tipon. Ni metas diversajn valorojn en ĝin. `.^name` montras, kiel la tipo ŝanĝiĝas:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Komence la ujo estas `Any`. Poste ĝi montras la tipon de sia nuna valoro.

{% include nav.html %}
