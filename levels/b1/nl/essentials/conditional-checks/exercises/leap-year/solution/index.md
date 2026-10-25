---
title: 'Solution: Schrikkeljaar'
---

{% include menu.html %}

## Disclaimer

De oplossing hieronder is bedoeld als oefening met conditionele controles. Voor echte taken kun je de methoden van de ingebouwde `Date`-klasse bestuderen. Deze klasse komt in het tweede deel van de cursus.

## Oplossing

Dit algoritme bepaalt of een jaar een schrikkeljaar is:

1. als het jaar niet deelbaar is door 4 => gewoon jaar
1. als het jaar niet deelbaar is door 100 => schrikkeljaar
1. als het jaar niet deelbaar is door 400 => gewoon jaar
1. anders => schrikkeljaar

Let op dat Raku ingebouwde types heeft om met datum en tijd te werken. Daarom komen we in het tweede deel van de cursus terug op deze taak.

## Code 1

De eerste oplossing doet precies wat de stappen hierboven zeggen:

```raku
my $year = prompt 'Year: ';

if $year % 4 {
    say 'Common year';
}
elsif $year % 100 {
    say 'Leap year';
}
elsif $year % 400 {
    say 'Common year';
}
else {
    say 'Leap year';
}
```

🦋 Vind het programma in het bestand [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Code 2

In de tweede oplossing staat alle logica in één expressie. De haakjes zijn niet altijd nodig, maar hier maken ze de code duidelijker.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Vind het programma in het bestand [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Output

Test beide programma's met de belangrijkste gevallen, bijvoorbeeld 1900, 2000, 2020 en 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Year: 1900
Common year

$ raku exercises/conditional-checks/leap-year.raku
Year: 2000
Leap year
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2020
Leap year

$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2021
Common year
```

%%tipblock
## `%%` vs `%`

Let op dat de operatoren `%%` en `%` in een Booleaanse context tegengestelde resultaten geven. Je kunt dit gebruiken om de juiste operator te kiezen. Dan hoef je geen vergelijking met nul te schrijven.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
