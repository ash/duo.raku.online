---
title: 'Solution: Hoeveel getallen zijn gelijk?'
---

{% include menu.html %}

Het programma moet de getallen een paar keer vergelijken. Als de gebruiker drie getallen invoert, zijn er maar drie gevallen mogelijk:

1. Alle drie de nummers zijn gelijk,
1. Slechts twee nummers zijn gelijk, en
1. Alle nummers zijn verschillend.

## Code

Hier is de oplossing, met alle vergelijkingen helemaal uitgeschreven.

```raku
my $n1 = prompt 'Voer nummer 1 in: ';
my $n2 = prompt 'Voer nummer 2 in: ';
my $n3 = prompt 'Voer nummer 3 in: ';

if $n1 == $n2 == $n3 {
    say 3;
}
elsif $n1 == $n2 || $n2 == $n3 || $n1 == $n3 {
    say 2;
}
else {
    say 0;
}
```

🦋 Vind het programma in het bestand [how-many-equal-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/how-many-equal-numbers.raku).

## Uitvoer

```console
$ raku exercises/conditional-checks/how-many-equal-numbers.raku 0 0 0
Voer nummer 1 in: 14
Voer nummer 2 in: 8
Voer nummer 3 in: 8
2

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Voer nummer 1 in: 15
Voer nummer 2 in: 15
Voer nummer 3 in: 15
3

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Voer nummer 1 in: 4
Voer nummer 2 in: 6
Voer nummer 3 in: 8
0
```

## Opmerkingen

1. Merk op dat je drie getallen in één expressie kunt vergelijken: `$n1 == $n2 == $n3`.
1. Als je over de reductie-operator hebt geleerd, kom dan terug en los deze taak opnieuw op.

{% include nav.html %}
