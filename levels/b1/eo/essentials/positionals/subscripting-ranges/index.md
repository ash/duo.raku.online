---
title: Subskribante intervalojn
---

{% include menu.html %}

`Range` estas pozicia datumtipo. Kiel ĉe tabeloj, vi povas preni iun ajn el ĝiaj elementoj.

Ekzemple, jen kiel presi la kvaran eron, kiun la intervalo kreas:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Estas unu grava diferenco. Male al tabeloj, intervaloj ne ĉiam tenas ĉiujn siajn valorojn en memoro.

## Grandeco

Por ricevi la grandecon de intervalo, uzu la metodon `elems`, same kiel ĉe tabeloj.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
