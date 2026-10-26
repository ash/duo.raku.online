---
title: Skalaraj ujoj
---

{% include menu.html %}

Kiel la nomo diras al vi, skalaraj ujoj tenas unuopajn, aŭ skalarajn, valorojn. Ĉi tiuj ujoj havas la sigelon `$`.

Jen tre simpla kaj rekta maniero uzi skalaron:

```raku
my $lang = 'Raku';
```

La variablo `$lang` estas skalara ujo.

Defaŭlte, skalaraj ujoj ne limigas la tipon de siaj datumoj. Do vi povas teni valoron de ajna tipo en ili. Jen la plej simpla maniero montri tion. Vi povas uzi la saman variablon por entjero kaj poste por ĉeno:

```raku
my $value = 42;
$value = 'forty-two';
```

La aŭtoro ne kuraĝigas vin skribi programojn tiamaniere.

Interne, tio signifas la jenon. Defaŭlte, nova ujo povas teni valorojn de la tipo `Any`. `Any` estas la baza tipo de plej multaj aliaj tipoj, kiel `Int` aŭ `Str`.

{% include nav.html %}
