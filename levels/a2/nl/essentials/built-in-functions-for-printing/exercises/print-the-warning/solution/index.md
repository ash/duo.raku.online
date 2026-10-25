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

Hier zijn twee voorbeelden:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wat is je leeftijd? 20
Je leeftijd is 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wat is je leeftijd? -1
Je hebt een negatief getal ingevoerd!
```

Gaat het bericht echt naar `STDERR`? Om dit te controleren, leid je de uitvoer om. Dan zie je de vraag naar je leeftijd niet. Maar je kunt nog steeds een getal invoeren. En je ziet de waarschuwing nog steeds.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Je hebt een negatief getal ingevoerd!
```

{% include nav.html %}
