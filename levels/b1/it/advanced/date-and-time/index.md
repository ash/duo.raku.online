---
title: Data e ora
---

{% include menu.html %}

Raku ha dei tipi predefiniti per le date del calendario e per gli orari. Una data del calendario ha il tipo `Date`. Per crearne una, indichi l'anno, il mese e il giorno:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Quando hai una data, puoi leggere le sue parti:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Il metodo `day-of-week` ti dice in quale giorno della settimana cade una data. Dà un numero da `1` per il lunedì a `7` per la domenica:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

Il 27 giugno 2026 è un sabato, quindi il risultato è `6`.

Il metodo `is-leap-year` controlla se l'anno della data è bisestile:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Chiama `Date.today` per ottenere la data di oggi. Il suo output qui non è mostrato. Dipende dal giorno in cui esegui il programma.

{% include nav.html %}
