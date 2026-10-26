---
title: Rectam eligere
---

{% include menu.html %}

Cum scalaribus quotidianis, ut numeris et seriebus, omnes tres repraesentationes idem apparent. Differentia apparet cum valoribus compositis vel indefinitis. Hic est `Pair`, tribus modis ostensus:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Hic est regula generalis et approximata:

* [`.gist`](../gist) — pro output quod homines *legent* (`say`, `note`).
* [`.Str`](../str) — pro output *textus plani* (`print`, `put`, variabiles intra series, operator `~`).
* [`.raku`](../raku-method) — pro forma *codici simili* dum errores corrigis (`dd`).

Cum classem scribis, cuique harum methodorum propriam definitionem dare potes. Tum obiecta tua quoque pulchre imprimuntur. Ad hoc redibimus cum [classes creabimus](/la/oop/classes) in parte sequenti.

{% include nav.html %}
