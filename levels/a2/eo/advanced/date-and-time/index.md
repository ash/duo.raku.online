---
title: Dato kaj tempo
translations_gpt:
---

{% include menu.html %}

Raku havas tipojn por datoj kaj tempoj. Ili estas parto de la lingvo. Dato en la kalendaro havas la tipon `Date`. Por fari daton, donu la jaron, la monaton kaj la tagon:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Dato havas partojn. Vi povas legi ĉiun el ili:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

La metodo `day-of-week` donas la tagon de la semajno por la dato. La tagoj havas numerojn. Lundo estas `1`, kaj dimanĉo estas `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

La 27-a de junio 2026 estas sabato. Do la rezulto estas `6`.

Superjaro havas 366 tagojn. La metodo `is-leap-year` kontrolas, ĉu la dato estas en superjaro:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Por ricevi la hodiaŭan daton, voku `Date.today`. Ni ne montras ĝian eligon ĉi tie. Ĝi dependas de la tago, kiam vi rulas la programon.

{% include nav.html %}
