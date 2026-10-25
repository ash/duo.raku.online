---
title: 'Solution: Groet een persoon'
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de taak.

## Code

```raku
my $naam = prompt 'Wat is je naam? ';
say 'Hallo, ', $naam, '!';
```

🦋 Je kunt de broncode vinden in het bestand [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Uitvoer

Voer het programma uit en voer een naam in als je de prompt ziet:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Wat is je naam? Inge
Hallo, Inge!
```

## Opmerkingen

1. Na de prompt voert de gebruiker een string in. Het programma bewaart deze string in een scalaire variabele, `$naam`. Je gebruikt de variabele in de lijst die je aan de `say` routine doorgeeft. Zo komt de naam in het bericht.

1. Een betere manier om dit probleem op te lossen is het gebruik van stringinterpolatie. We komen er snel op terug.

{% include nav.html %}
