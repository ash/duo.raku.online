---
title: Subskribante intervalojn
---

{% include menu.html %}

`Range` estas pozicia datumtipo. Kiel ĉe tabelo, vi povas preni iun ajn el ĝiaj elementoj.

Intervalo faras sekvencon de eroj. Ekzemple, jen kiel vi presas la kvaran elementon:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Notu gravan diferencon de tabeloj. Intervalo ne ĉiam tenas ĉiujn siajn valorojn en memoro.

## Grandeco

Por ricevi la grandecon de intervalo, uzu la metodon `elems`. Ĝi funkcias same kiel ĉe tabeloj.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
