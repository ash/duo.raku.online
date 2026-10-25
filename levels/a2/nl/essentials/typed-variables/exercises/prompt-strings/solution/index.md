---
title: 'Solution: Onderzoek het resultaat van `prompt` — Strings'
---

{% include menu.html %}

## Code

Hier is het volledige programma. Het doet het werk. Het print de ingevoerde string en het type ervan.

```raku
my $name = prompt 'Wat is je naam? ';
say $name;
say $name.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testuitvoeringen

Voer het programma twee of drie keer uit. Voer verschillende namen in. Het programma print je invoer nog een keer. Het vertelt je ook dat de variabele een string bevat. Met andere woorden: het is een object van het type `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Wat is je naam? Andrey
Andrey
(Str)
```

Voer het programma nu opnieuw uit. Typ een paar spaties in plaats van een naam. Druk dan op Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
Wat is je naam?    

(Str)
```

We zien de uitvoer niet. Maar we zien wel het type van de variabele. Het is nog steeds `Str`.

{% include nav.html %}
