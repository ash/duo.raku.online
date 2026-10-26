---
title: 'Solution: Una settimana dopo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `later(:days(7))` sposta la data avanti di sette giorni. È una settimana. Potevamo anche scrivere `+ 7`. Ma con l'argomento con nome vedi l'unità di misura.

1. Febbraio 2027 ha 28 giorni. Quindi la data una settimana dopo il 28 è a marzo. Raku passa a marzo da solo. Il risultato è `2027-03-07`.

1. Chiamiamo `day-of-week` sulla nuova data. Dà `7`. Con questo numero puoi controllare facilmente il risultato. Esattamente una settimana dopo, il giorno della settimana è lo *stesso*. E anche `2027-02-28` è una domenica (`7`). Quindi qui `7` è la risposta che ti aspetti.

{% include nav.html %}
