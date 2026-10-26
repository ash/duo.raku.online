---
title: Operationes coniunctorum
translations_gpt:
---

{% include menu.html %}

Coniuncta componere potes operationibus usitatis ex theoria coniunctorum. Quisque operator symbolum Unicode et scripturam ASCII habet. Utrumvis adhibere potes.

_Unio_ `∪`, vel `(|)`, omnes valores amborum coniunctorum colligit:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Quia ambo coniuncta `3` continent, unio quinque elementa distincta habet: `1, 2, 3, 4, 5`.

_Intersectio_ `∩`, vel `(&)`, solum valores servat quos ambo coniuncta habent:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — nota inopias non ordinatas esse
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Hic intersectio `2` et `3` habet, valores qui in ambobus coniunctis sunt. Coniunctum ordinem suum non habet. Itaque cum id imprimis, duo elementa utrovis ordine venire possunt.

Eventus harum operationum quoque coniunctum est. Itaque easdem quaestiones ei ponere potes. Quot elementa habet, et estne certus valor in eo?

{% include nav.html %}
