---
title: 'Oplossing: Opslaan en lezen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `spurt` maakt het bestand aan en schrijft de string erin. `slurp` leest het hele bestand terug in een string. Samen doen ze het hele werk van opslaan en inladen.

1. `slurp` geeft tekst terug, `"42\n"`. Dus voordat we gaan rekenen, gebruiken we `trim` om de newline aan het eind weg te halen. Daarna roepen we `.Int` aan om van de tekst een getal te maken. Het resultaat, `42 * 2`, is `84`.

1. Toch werkt het programma ook zonder `.trim.Int`.

{% include nav.html %}
