---
title: Ŝlosiloj, valoroj kaj paroj
translations_gpt:
---

{% include menu.html %}

Aliaj adverboj ŝanĝas, **kion** subskribo redonas. Normale subskribo redonas nur la valoron, sed ĉi tiuj adverboj redonas pli:

* `:v` — la valoron (la defaŭlto)
* `:k` — la ŝlosilon (aŭ indekson)
* `:kv` — kaj la ŝlosilon kaj la valoron
* `:p` — `Pair` el ŝlosilo kaj valoro

Por tabelo, la «ŝlosilo» estas la indekso:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` donas la indekson kaj la valoron kune en listo. `@a[1]:p` donas ilin kiel paron.

La samo funkcias por hakoj. Ĝi estas precipe utila kun tranĉaĵo de pluraj ŝlosiloj samtempe:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Ĉi tie, tranĉaĵo de du ŝlosiloj redonas ĉiun ŝlosilon kaj post ĝi ĝian valoron. `map`, `for` kaj similaj iloj ofte baziĝas sur ĉi tiuj adverboj. Ili permesas al vi trakti ŝlosilojn kaj valorojn flank-al-flanke, sen apartaj serĉoj.

{% include nav.html %}
