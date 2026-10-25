---
title: Operatore ternario
---

{% include menu.html %}

In Raku, l'operatore ternario ha due parti: `??` ... `!!`. Prima c'è un test booleano, e poi vengono due espressioni. Solo una di loro viene eseguita, a seconda del risultato del test.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Con il valore che `$shines` ha ora, il programma stampa `day`. Se lo cambi in `Moon`, il programma stampa `night`.

Puoi concatenare le espressioni ternarie. Fai solo attenzione che il codice non diventi troppo complicato.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Qui il programma stampa una parte diversa della giornata per valori diversi di `$hours`.

{% include nav.html %}
