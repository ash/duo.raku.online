---
title: 'Solution: Vervangen met antoniemen'
---

{% include menu.html %}

Eerst nemen we de inhoud van het bestand [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). We kopiëren die naar het oplossingsbestand [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Dan gaat een lus over de invoerargumenten. De lus zoekt elk woord in het woordenboek. Als het woord erin staat, neemt de lus zijn antoniem. Anders gebruikt het programma het oorspronkelijke woord.

## Code

Hier is de oplossing. Ze toont maar een deel van het woordenboek.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Vind het programma in het bestand [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Uitvoer

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Opmerkingen

1. De `//` operator is de [defined-or operator](/nl/essentials/scalar-variables/defined-or-operator). Hij geeft de eerste operand terug die gedefinieerd is.
1. Alle sleutels in de hash zijn woorden. Ze zien eruit als identificatoren. Je hebt dus geen aanhalingstekens om ze heen nodig. Je kunt de hash ook zo schrijven:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
