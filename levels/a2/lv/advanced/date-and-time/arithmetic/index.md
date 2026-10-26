---
title: Datumu aritmētika
translations_gpt:
---

{% include menu.html %}

Ar datumiem jūs varat rēķināt. Tad daudzi ikdienas aprēķini ir viegli.

Datumam var pieskaitīt veselu skaitli. Tad datums pavirzās uz priekšu par tik dienām. Jūs iegūstat jaunu datumu. Ja vajag, Raku maina arī mēnesi un gadu:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Jūs varat arī atņemt vienu datumu no otra. Jūs iegūstat dienu skaitu starp tiem:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Lielākiem soļiem izmantojiet metodes `later` un `earlier`. Tās pieņem nosauktus argumentus, piemēram, `:days`, `:months` vai `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Šīs metodes vienmēr dod pareizo datumu. Tās strādā arī tad, kad sākas jauns mēnesis vai gads. Tāpēc jums nekad nav jāzina, cik dienu ir mēnesī.

{% include nav.html %}
