---
title: 'Solution: Onderzoek het resultaat van `prompt` — Strings'
---

{% include menu.html %}

## Code

Hier is het volledige programma. Het doet het werk en print zowel de ingevoerde string als het type ervan.

```raku
my $name = prompt 'Wat is je naam? ';
say $name;
say $name.WHAT;
```

🦋 Je kunt de broncode vinden in het bestand [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testuitvoeringen

Voer het programma een paar keer uit met verschillende namen. Het programma herhaalt de invoer. Het meldt ook dat de variabele een string bevat. Met andere woorden: het is een object van het type `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Wat is je naam? Andrey
Andrey
(Str)
```

Voer het programma nu opnieuw uit. Typ een paar spaties in plaats van een naam en druk op Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
Wat is je naam?    

(Str)
```

We zien de uitvoer niet. Maar we kunnen zien dat de variabele nog steeds het type `Str` heeft.

{% include nav.html %}
