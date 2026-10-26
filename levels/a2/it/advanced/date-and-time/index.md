---
title: Data e ora
---

{% include menu.html %}

Raku ha dei tipi per le date e gli orari. Fanno parte del linguaggio. Una data del calendario ha il tipo `Date`. Per creare una data, dai l'anno, il mese e il giorno:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Una data ha delle parti. Puoi leggere ognuna di queste parti:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Il metodo `day-of-week` dà il giorno della settimana della data. I giorni hanno un numero. Il lunedì è `1` e la domenica è `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

Il 27 giugno 2026 è un sabato. Quindi il risultato è `6`.

Un anno bisestile ha 366 giorni. Il metodo `is-leap-year` controlla se la data è in un anno bisestile:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Per avere la data di oggi, chiama `Date.today`. Qui non mostriamo il suo output. Dipende dal giorno in cui esegui il programma.

{% include nav.html %}
