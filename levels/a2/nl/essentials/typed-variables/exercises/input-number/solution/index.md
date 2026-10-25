---
title: 'Solution: Gebruikersinvoer naar een getal converteren'
---

{% include menu.html %}

Het programma kan heel eenvoudig zijn:

## Code

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Je kunt de broncode vinden in het bestand [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Voorbeeld

Voer het uit en typ een geheel getal. Het mag positief of negatief zijn:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Opmerkingen

We [zagen al](/nl/essentials/typed-variables/allomorphs) dat `prompt` een `IntStr`-waarde teruggeeft. Je kunt deze waarde aan een `Int`-variabele toewijzen. Je hoeft hem niet om te zetten.

Maar let op. Soms voer je een string in die Raku niet naar een geheel getal kan omzetten. Dan stopt het programma met een uitzondering.

{% include nav.html %}
