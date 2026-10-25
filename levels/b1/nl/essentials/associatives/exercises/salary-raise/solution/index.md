---
title: 'Solution: Salarisverhoging'
---

{% include menu.html %}

Het programma moet een van de waarden in de hash veranderen. Een nieuwe waarde toewijzen werkt bijna op dezelfde manier als bij een scalaire variabele.

## Code

Hier is de oplossing:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # in procenten

%employee<salary> *= (1 + $raise / 100);
say "Nieuw salaris van %employee<full-name>: %employee<salary>";
```

🦋 Vind het programma in het bestand [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Uitvoer

Als je het programma uitvoert, controleer dan of je berekeningen kloppen. Controleer ook of je de procenten goed hebt omgezet.

```console
$ raku exercises/associatives/salary-raise.raku
Nieuw salaris van Eliza Vents: 3150
```

{% include nav.html %}
