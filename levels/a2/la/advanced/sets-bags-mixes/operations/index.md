---
title: Operationes coniunctorum
translations_gpt:
---

{% include menu.html %}

Coniuncta componere potes operationibus usitatis ex theoria coniunctorum. Theoria coniunctorum pars mathematicae est. Quisque operator symbolum Unicode habet. Etiam modum scribendi in ASCII habet. Eum adhibe quem mavis.

_Unio_ est `∪`, vel `(|)` in ASCII. Omnes valores ex ambobus coniunctis sumit:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Valor `3` in ambobus coniunctis est. Itaque unio quinque elementa distincta habet: `1, 2, 3, 4, 5`.

_Intersectio_ est `∩`, vel `(&)` in ASCII. Solum valores servat qui in ambobus coniunctis sunt:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — nota inopias non ordinatas esse
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Hic intersectio `2` et `3` habet. Hi valores in ambobus coniunctis sunt. Coniunctum ordinem non habet. Itaque in exitu duo elementa quolibet ordine venire possunt.

Hae operationes quoque coniunctum dant. Itaque easdem quaestiones ei ponere potes. Quot elementa habet? Estne certus valor in eo?

{% include nav.html %}
