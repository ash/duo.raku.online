---
title: 'Oplossing: Opslaan en lezen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Je kunt de broncode vinden in het bestand [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Uitvoer

```
84
```

## Opmerkingen

1. `spurt` maakt het bestand aan en schrijft de string erin. `slurp` leest het hele bestand terug in een string. Samen doen ze beide taken. Ze slaan gegevens op en laden ze weer in.

1. `slurp` geeft tekst terug: `"42\n"`. Dus gebruiken we `trim` om de newline aan het eind weg te halen. Daarna roepen we `.Int` aan om van de tekst een getal te maken. Nu kunnen we ermee rekenen. Het resultaat van `42 * 2` is `84`.

1. Maar het programma werkt ook zonder `.trim.Int`.

{% include nav.html %}
