---
title: 'Solution: Scrivere un numero'
---

{% include menu.html %}

Il programma qui sotto ha un suo array con i nomi dei numeri. Ci sono i nomi da 0 a 20. Ci sono anche i nomi delle decine: 20, 30 e così via. Poi c'è una catena di controlli condizionali. Scelgono una regola di scrittura per il numero.

## Codice

```raku
my $n = @*ARGS[0];

my @names = <
    zero one two three four five six seven eight nine ten
    eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty
    thirty fourty fifty sixty seventy eighty ninety >;

if $n < 20 {
    say @names[$n];
}
elsif $n % 10 { # Numeri a due cifre non tondi, ad es., 34
    say @names[$n / 10 + 18] ~ '-' ~ @names[$n % 10];
}
else { # Multipli di 10, ad es., 50
    say @names[$n / 10 + 18];
}
```

🦋 Trova il programma nel file [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Esempio

Esegui il programma alcune volte. Controlla tutti e tre i rami di `if`—`elsif`—`else`.

```console
$ raku exercises/positionals/spell-a-number.raku 5
five

$ raku exercises/positionals/spell-a-number.raku 12
twelve

$ raku exercises/positionals/spell-a-number.raku 67
sixty-seven

$ raku exercises/positionals/spell-a-number.raku 80
eighty
```

{% include nav.html %}
