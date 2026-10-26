---
title: Rectam eligere
---

{% include menu.html %}

Sume scalares simplices, ut numeros et series. Hic omnes tres formae idem apparent. Pro valoribus cum pluribus partibus differunt. Etiam pro valoribus indefinitis differunt. Hic est `Pair`, tribus modis ostensus:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Hic est regula simplex:

* [`.gist`](../gist) — pro output quod homines *legunt* (`say`, `note`).
* [`.Str`](../str) — pro output quod *textus planus* est (`print`, `put`, valores intra series, operator `~`).
* [`.raku`](../raku-method) — pro forma *codici simili*, cum errores corrigis (`dd`).

Classes tuas proprias scribere potes. In classe quamque harum methodorum ipse definire potes. Tum obiecta tua quoque pulchre apparent. Ad hoc in parte sequenti redimus. Ibi [classes creamus](/la/oop/classes).

{% include nav.html %}
