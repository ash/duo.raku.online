---
title: 'Solution: Vervangen met antoniemen'
---

{% include menu.html %}

Het oplossingsbestand, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), begint met een kopie van [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Daarna gaat een lus over de invoerargumenten. Hij probeert elk woord in het woordenboek te vinden. Als dat lukt, neemt hij het antoniem. Als het woord niet in het woordenboek staat, wordt het oorspronkelijke woord gebruikt.

## Code

De oplossing staat hieronder, maar alleen een deel van het woordenboek wordt hier getoond.

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
1. Alle sleutels in de hash zijn woorden die eruitzien als identificatoren. Je hoeft ze dus niet tussen aanhalingstekens te zetten. Dat betekent dat je de hash ook zo kunt maken:

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
