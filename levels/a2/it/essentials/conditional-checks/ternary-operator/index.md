---
title: Operatore ternario
---

{% include menu.html %}

L'operatore ternario in Raku ha due parti: `??` ... `!!`. Prima c'è un test booleano. Il suo risultato è `True` o `False`. Dopo il test ci sono due espressioni. Raku esegue solo una di loro. Il risultato del test sceglie quale.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

Con il valore attuale di `$shines`, il programma stampa `day`. Cambia il valore in `Moon`. Allora il risultato è `night`.

Puoi unire le espressioni ternarie in una catena. Ma non renderla troppo difficile.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Qui il programma stampa una parte del giorno. La parte dipende dal valore in `$hours`.

{% include nav.html %}
