---
title: Diapazonu apakšizteiksmes
---

{% include menu.html %}

`Range` ir pozicionāls datu tips. Tāpat kā masīvā, jūs varat iegūt jebkuru tā elementu.

Diapazons izveido elementu secību. Piemēram, šādi jūs izdrukājat ceturto elementu:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Ievērojiet svarīgu atšķirību no masīviem. Diapazons ne vienmēr glabā visas savas vērtības atmiņā.

## Izmērs

Lai iegūtu diapazona izmēru, izmantojiet `elems` metodi. Tā darbojas tāpat kā ar masīviem.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
