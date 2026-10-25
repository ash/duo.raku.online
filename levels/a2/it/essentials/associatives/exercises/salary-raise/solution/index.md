---
title: 'Solution: Aumento di stipendio'
---

{% include menu.html %}

Il programma deve cambiare un valore nell'hash. Gli assegni un nuovo valore. È quasi come con una variabile scalare.

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

Esegui il programma. Controlla che i calcoli siano giusti. Controlla anche di convertire le percentuali nel modo giusto.

```console
$ raku exercises/associatives/salary-raise.raku
Nuovo stipendio di Eliza Vents: 3150
```

{% include nav.html %}
