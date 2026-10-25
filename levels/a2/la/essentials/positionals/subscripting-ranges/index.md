---
title: Subscribendo intervalla
---

{% include menu.html %}

`Range` est typus datorum positionis. Sicut in array, quodlibet elementum eius obtinere potes.

Intervallum seriem rerum facit. Exempli gratia, sic quartum elementum imprimis:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Nota magnum discrimen ab arrayibus. Intervallum non semper omnes valores suos in memoria tenet.

## Magnitudo

Ut magnitudinem intervalli obtineas, methodo `elems` utere. Eodem modo operatur ac cum arrayibus.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
