---
title: Series
translations_gpt:
---

{% include menu.html %}

_Series_ est catena valorum fixo ordine. Raku eos unum post alterum facit. Raku series operatore `...` construit. Ei aliquot valores das. Operator exemplar in eis invenit. Deinde ceteros valores facit, usque ad finem. Finis est valor ubi series desinit.

In casu simplicissimo series ab uno valore ad alterum numerat:

```raku
say 1 ... 5; # (1 2 3 4 5)
```

Initio duos valores dare potes. Tum Raku gradum inter eos invenit. Eodem gradu pergit. Hoc modo seriem arithmeticam facis:

```raku
say 1, 3 ... 11; # (1 3 5 7 9 11)
```

Hic primi valores `1, 3` gradum duorum dant. Itaque Raku semper duo addit. Consistit cum `11` attingit.

Operator `...` valorem typi `Seq` dat:

```raku
say (1 ... 5).WHAT; # (Seq)
```

Proxima themata alia exemplaria ostendunt quae operator `...` novit. Etiam ostendunt: series pigra esse potest. Potest etiam infinita esse et finem non habere.

{% include nav.html %}
