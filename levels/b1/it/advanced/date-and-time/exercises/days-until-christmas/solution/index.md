---
title: 'Solution: Settimane a Natale'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Quando sottrai un `Date` da un altro, ottieni il numero di giorni tra le due date. Qui è `181`. Così non devi contare da solo i giorni di ogni mese. La data più tarda è scritta per prima, quindi il risultato è positivo.

1. La divisione intera con `div` dà il numero di settimane intere: `181 div 7` fa `25`. L'operatore modulo `%` dà i giorni che restano: `181 % 7` fa `6`.

{% include nav.html %}
