---
title: '`gather` kaj `take`'
translations_gpt:
---

{% include menu.html %}

La paro `gather` kaj `take` estas fleksebla maniero konstrui liston. Vi metas iom da kodo en blokon `gather`. Ĉiufoje, kiam ĉi tiu kodo vokas `take`, la valoro iras en la liston, kiun `gather` redonas.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

La tri vokoj de `take` donas tri valorojn, kaj `gather` kolektas ilin en liston. Ĉi tiu listo estas konservata en `@result`.

La paro estas vere forta, kiam la vokoj de `take` estas disaj tra ordinara kodo. Ekzemplo estas buklo kun kondiĉo. Tiam la listo havas nur la valorojn, kiujn vi elektis preni:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Ĉi tie la buklo iras tra la nombroj de 1 ĝis 10. Sed nur la paraj estas prenataj. Do fine `@evens` enhavas `2, 4, 6, 8, 10`. La operatoro `%%` kontrolas, ĉu nombro dividiĝas senreste.

Ĉi tiu divido de la laboro estas tio, kio faras `gather`/`take` tiel utila. La ĉirkaŭa kodo decidas, _kiam_ produkti valoron. Kaj `gather` kviete kolektas ĉion, kio estas prenata.

{% include nav.html %}
