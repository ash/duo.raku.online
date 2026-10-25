---
title: 'Solution: Schrikkeljaar'
---

{% include menu.html %}

## Disclaimer

De oplossing hieronder is om te oefenen. Zo leer je conditionele controles gebruiken. Raku heeft een ingebouwde `Date`-klasse. In het echte leven kun je de methoden van deze klasse leren. Deze klasse leren we in het tweede deel van de cursus.

## Oplossing

Deze stappen zeggen of een jaar een schrikkeljaar is:

1. als het jaar niet deelbaar is door 4 => gewoon jaar
1. als het jaar niet deelbaar is door 100 => schrikkeljaar
1. als het jaar niet deelbaar is door 400 => gewoon jaar
1. anders => schrikkeljaar

Raku heeft ingebouwde types voor datum en tijd. Die kun je ook gebruiken. Dus komt deze taak terug in het tweede deel van de cursus.

## Code 1

De eerste oplossing volgt precies de stappen hierboven:

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

De tweede oplossing zet alle logica in één expressie. Je hebt de ronde haakjes niet altijd nodig. We zetten ze hier om de code duidelijker te maken.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Vind het programma in het bestand [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Output

Probeer beide programma's met de belangrijkste gevallen. Gebruik bijvoorbeeld 1900, 2000, 2020 en 2021.

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

Soms heeft Raku `True` of `False` nodig. Dat noemen we een Booleaanse context. In een Booleaanse context geven `%%` en `%` omgekeerde resultaten. Als de ene `True` geeft, geeft de andere `False`. Dat kun je gebruiken. Kies een van de twee operatoren. Dan hoef je geen vergelijking met nul te schrijven.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
