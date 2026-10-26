---
title: Datumu aritmētika
translations_gpt:
---

{% include menu.html %}

Ar datumiem var veikt aritmētiskas darbības. Tas padara daudzus ikdienas aprēķinus vienkāršus.

Ja datumam pieskaitāt veselu skaitli, tas pavirzās uz priekšu par tik dienām. Rezultāts ir jauns datums. Tā mēnesis un gads mainās automātiski, kad vajag:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Ja atņemat vienu datumu no otra, jūs iegūstat dienu skaitu starp tiem:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Lielākiem soļiem ir metodes `later` un `earlier`. Tās pieņem nosauktus argumentus, piemēram, `:days`, `:months` vai `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Šīs metodes rēķina pareizi arī tad, kad sākas jauns mēnesis vai gads. Tāpēc jums nekad nav jāuztraucas par to, cik dienu ir mēnesī.

{% include nav.html %}
