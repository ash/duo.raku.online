---
title: 'Solution: Settimane a Natale'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Puoi trovare il codice sorgente nel file [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Output

```
25 weeks and 6 days
```

## Commenti

1. Puoi sottrarre un `Date` da un altro. Il risultato è il numero di giorni tra le due date. Qui è `181`. Così non devi contare tu i giorni di ogni mese. La data più tarda viene prima. Quindi il risultato è positivo.

1. L'operatore `div` divide gli interi. Dà il numero di settimane intere: `181 div 7` fa `25`. L'operatore modulo `%` dà quello che resta dopo la divisione. Sono i giorni in più: `181 % 7` fa `6`.

{% include nav.html %}
