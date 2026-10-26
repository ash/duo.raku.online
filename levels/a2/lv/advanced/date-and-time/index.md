---
title: Datums un laiks
translations_gpt:
---

{% include menu.html %}

Raku ir tipi datumiem un laikiem. Tie ir valodas daļa. Kalendāra datumam ir tips `Date`. Lai izveidotu datumu, norādiet gadu, mēnesi un dienu:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Datumam ir daļas. Jūs varat nolasīt katru no tām:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Metode `day-of-week` dod datuma nedēļas dienu. Dienām ir numuri. Pirmdiena ir `1`, un svētdiena ir `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

27.06.2026 ir sestdiena. Tāpēc rezultāts ir `6`.

Garajā gadā ir 366 dienas. Metode `is-leap-year` pārbauda, vai datums ir garajā gadā:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Lai iegūtu šodienas datumu, izsauciet `Date.today`. Šeit mēs tā izvadi nerādām. Izvade ir atkarīga no dienas, kad jūs palaižat programmu.

{% include nav.html %}
