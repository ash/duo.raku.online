---
title: Ŝlosiloj, valoroj kaj paroj
translations_gpt:
---

{% include menu.html %}

Aliaj adverboj ŝanĝas, **kion** subskribo redonas. Kutime subskribo redonas la valoron. Ĉi tiuj adverboj redonas pli:

* `:v` — la valoron; tio estas la defaŭlto
* `:k` — la ŝlosilon aŭ la indekson
* `:kv` — la ŝlosilon kaj la valoron
* `:p` — `Pair` el la ŝlosilo kaj la valoro

Por tabelo, la «ŝlosilo» estas la indekso:

```raku
my @a = 10, 20, 30;

say @a[1]:kv; # (1 20)
say @a[1]:p;  # 1 => 20
```

`@a[1]:kv` redonas la indekson kaj la valoron kune en listo. `@a[1]:p` redonas ilin kiel paron.

Tio funkcias ankaŭ kun hakoj. Ĝi estas tre utila kun tranĉaĵo. Tranĉaĵo havas plurajn ŝlosilojn samtempe:

```raku
my %h = a => 1, b => 2, c => 3;

say %h<a c>:kv; # (a 1 c 3)
```

Ĉi tie, la tranĉaĵo havas du ŝlosilojn. La rezulto estas ŝlosilo, ĝia valoro, la sekva ŝlosilo, ĝia valoro. `map`, `for` kaj similaj iloj ofte uzas ĉi tiujn adverbojn. Per ili, vi povas labori kun ŝlosiloj kaj valoroj kune. Vi ne bezonas apartajn serĉojn.

{% include nav.html %}
