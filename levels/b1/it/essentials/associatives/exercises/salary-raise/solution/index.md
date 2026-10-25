---
title: 'Solution: Aumento di stipendio'
---

{% include menu.html %}

Il programma deve cambiare uno dei valori dell'hash. Assegnare il nuovo valore funziona quasi come con una variabile scalare.

## Codice

Ecco la soluzione:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # in percentuale

%employee<salary> *= (1 + $raise / 100);
say "Nuovo stipendio di %employee<full-name>: %employee<salary>";
```

🦋 Trova il programma nel file [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Output

Quando esegui il programma, controlla che i tuoi calcoli siano corretti. Controlla anche di aver convertito correttamente le percentuali.

```console
$ raku exercises/associatives/salary-raise.raku
Nuovo stipendio di Eliza Vents: 3150
```

{% include nav.html %}
