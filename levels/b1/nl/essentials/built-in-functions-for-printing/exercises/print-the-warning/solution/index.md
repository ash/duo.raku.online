---
title: 'Solution: Druk de waarschuwing af'
---

{% include menu.html %}

## Code

Hier is de oplossing:

```raku
my $age = prompt 'Wat is je leeftijd? ';

if $age < 0 {
    note 'Je hebt een negatief getal ingevoerd!';
}
else {
    say "Je leeftijd is $age";
}
```

🦋 Vind het programma in het bestand [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Uitvoer

Hier zijn twee mogelijke gevallen:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wat is je leeftijd? 20
Je leeftijd is 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wat is je leeftijd? -1
Je hebt een negatief getal ingevoerd!
```

Om te controleren of het foutbericht naar `STDERR` gaat, leid je de uitvoer om. De prompt voor je leeftijd verschijnt dan niet, maar je kunt nog steeds een getal invoeren. De waarschuwing is nog steeds zichtbaar.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Je hebt een negatief getal ingevoerd!
```

{% include nav.html %}
