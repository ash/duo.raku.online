---
title: Skalaraj ujoj
---

{% include menu.html %}

Skalaraj ujoj tenas unuopajn, aŭ skalarajn, valorojn. La nomo diras tion al vi. Tiaj ujoj havas la sigelon `$`.

Jen tre simpla uzo de skalaro:

```raku
my $lang = 'Raku';
```

La variablo `$lang` estas skalara ujo.

Defaŭlte, skalara ujo ne limigas la datumtipon. Do vi povas teni valoron de ajna tipo en ĝi. Jen la plej simpla ekzemplo. Unue, variablo tenas entjeron. Poste la sama variablo tenas ĉenon:

```raku
my $value = 42;
$value = 'forty-two';
```

La aŭtoro ne rekomendas skribi kodon tiel.

Ene de Raku, tio signifas unu aferon. Defaŭlte, nova ujo povas teni valorojn de la tipo `Any`. `Any` estas la baza tipo por plej multaj aliaj tipoj. Ekzemple, `Int` kaj `Str` venas de `Any`.

{% include nav.html %}
