---
title: Diapazonu apakšizteiksmes
---

{% include menu.html %}

`Range` ir pozicionāls datu tips. Tāpat kā ar masīviem, jūs varat iegūt jebkuru tā elementu.

Piemēram, šādi var izdrukāt ceturto elementu, ko ģenerē diapazons:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Ir viena svarīga atšķirība. Atšķirībā no masīviem, diapazoni ne vienmēr glabā visas savas vērtības atmiņā.

## Izmērs

Lai iegūtu diapazona izmēru, izmantojiet `elems` metodi, tieši tāpat kā ar masīviem.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
