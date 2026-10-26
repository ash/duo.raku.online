---
title: '`gather` kaj `take`'
translations_gpt:
---

{% include menu.html %}

`gather` kaj `take` laboras kiel paro. Per ili vi povas konstrui liston en multaj manieroj. Vi metas iom da kodo en blokon `gather`. Ĉiufoje, kiam ĉi tiu kodo vokas `take`, valoro iras en liston. La bloko `gather` donas al vi ĉi tiun liston.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

La tri vokoj de `take` donas tri valorojn. `gather` kolektas ilin en liston. La listo iras en `@result`.

La paro estas plej utila, kiam la vokoj de `take` estas en normala kodo. Ekzemple, ili povas esti en buklo kun kondiĉo. Tiam la listo havas nur la valorojn, kiujn vi prenas:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Ĉi tie la buklo iras tra la nombroj de 1 ĝis 10. Sed la kodo prenas nur la parajn nombrojn. Do fine `@evens` havas `2, 4, 6, 8, 10`. La operatoro `%%` kontrolas, ĉu nombro dividiĝas sen resto.

Ĉi tiu divido de la laboro faras `gather`/`take` tiel utila. La kodo ĉirkaŭ `take` decidas, _kiam_ fari valoron. Kaj `gather` kviete kolektas ĉiun valoron, kiun vi prenas.

{% include nav.html %}
