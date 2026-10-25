---
title: 'Solution: Groet een persoon'
---

{% include menu.html %}

Hier is één manier om de taak op te lossen.

## Code

```raku
my $naam = prompt 'Wat is je naam? ';
say 'Hallo, ', $naam, '!';
```

🦋 Je kunt de broncode vinden in het bestand [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Uitvoer

Voer het programma uit. Het vraagt om je naam. Voer een naam in:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Wat is je naam? Inge
Hallo, Inge!
```

## Opmerkingen

1. Het programma vraagt om een naam. De gebruiker voert een string in. De scalaire variabele `$naam` bewaart deze string. Dan geeft het programma een lijst met waarden aan `say`. De variabele is een deel van deze lijst. Zo komt de naam in het bericht.

1. Er is een betere manier om dit probleem op te lossen. Die gebruikt stringinterpolatie. We komen snel terug op dit probleem.

{% include nav.html %}
