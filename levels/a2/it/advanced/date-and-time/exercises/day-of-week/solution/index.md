---
title: 'Solution: Giorno della settimana'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Puoi trovare il codice sorgente nel file [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Output

```
True
```

## Commenti

1. `day-of-week` dà ai giorni i numeri da `1` a `7`. Il lunedì è `1` e la domenica è `7`. Quindi i due giorni del fine settimana sono `6` e `7`.

1. Il test `>= 6` è `True` per il sabato e per la domenica. È `False` per gli altri giorni. Il 14 febbraio 2027 è una domenica. Il suo numero è `7`. Quindi il programma stampa `True`.

{% include nav.html %}
