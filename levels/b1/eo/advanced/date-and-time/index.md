---
title: Dato kaj tempo
translations_gpt:
---

{% include menu.html %}

Raku havas enkonstruitajn tipojn por kalendaraj datoj kaj horloĝaj tempoj. Kalendara dato havas la tipon `Date`. Por krei ĝin, vi donas la jaron, la monaton kaj la tagon:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Kiam vi havas daton, vi povas legi ĝiajn partojn:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

La metodo `day-of-week` diras al vi la tagon de la semajno de dato. Ĝi donas nombron de `1` por lundo ĝis `7` por dimanĉo:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

La 27-a de junio 2026 estas sabato, do la rezulto estas `6`.

La metodo `is-leap-year` kontrolas, ĉu la jaro de la dato estas superjaro:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Voku `Date.today` por ricevi la hodiaŭan daton. Ĝia eligo ne estas montrita ĉi tie. Ĝi dependas de la tago, kiam vi rulas la programon.

{% include nav.html %}
