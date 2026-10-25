---
title: Subscribendo intervalla
---

{% include menu.html %}

`Range` est typus datorum positionis. Ut cum arrayibus, quodlibet elementum eius obtinere potes.

Exempli gratia, sic quartum elementum quod intervallum generat imprimis:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Est unum discrimen magni momenti. Intervalla, dissimilia arrayibus, non semper omnes valores suos in memoria tenent.

## Magnitudo

Ut magnitudinem intervalli obtineas, methodo `elems` utere, sicut cum arrayibus.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
