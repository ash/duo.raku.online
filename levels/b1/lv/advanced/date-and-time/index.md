---
title: Datums un laiks
translations_gpt:
---

{% include menu.html %}

Raku ir iebūvēti tipi kalendāra datumiem un pulksteņa laikiem. Kalendāra datumam ir tips `Date`. Lai to izveidotu, jūs norādāt gadu, mēnesi un dienu:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Kad jums ir datums, jūs varat nolasīt tā daļas:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Metode `day-of-week` pasaka, kurā nedēļas dienā ir datums. Tā dod skaitli no `1` pirmdienai līdz `7` svētdienai:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

27.06.2026 ir sestdiena, tāpēc rezultāts ir `6`.

Metode `is-leap-year` pārbauda, vai datuma gads ir garais gads:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Izsauciet `Date.today`, lai iegūtu šodienas datumu. Tā izvade šeit nav parādīta. Tā ir atkarīga no dienas, kad jūs palaižat programmu.

{% include nav.html %}
