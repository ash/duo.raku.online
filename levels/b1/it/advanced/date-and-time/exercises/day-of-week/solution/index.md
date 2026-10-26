---
title: 'Solution: Giorno della settimana'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `day-of-week` dà al lunedì il numero `1` e alla domenica il numero `7`. Quindi i due giorni del fine settimana sono esattamente `6` e `7`.

1. Il test `>= 6` dà `True` il sabato e la domenica. In tutti gli altri giorni dà `False`. Il 14 febbraio 2027 è una domenica (`7`), quindi il programma stampa `True`.

{% include nav.html %}
