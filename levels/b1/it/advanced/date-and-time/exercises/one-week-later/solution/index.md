---
title: 'Solution: Una settimana dopo'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Puoi trovare il codice sorgente nel file [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Output

```
2027-03-07
7
```

## Commenti

1. `later(:days(7))` sposta la data avanti di sette giorni, cioè una settimana. Potevamo anche scrivere `+ 7`, ma l'argomento con nome mostra chiaramente l'unità di misura.

1. Febbraio 2027 ha solo 28 giorni. Quindi una settimana dopo il 28, Raku passa da solo a marzo. Il risultato è `2027-03-07`.

1. Se chiami `day-of-week` sulla nuova data, ottieni `7`. Così è facile controllare il risultato. Esattamente una settimana dopo, il giorno della settimana deve essere lo *stesso* di prima. E anche `2027-02-28` è una domenica (`7`), quindi `7` è la risposta che ti aspetti.

{% include nav.html %}
