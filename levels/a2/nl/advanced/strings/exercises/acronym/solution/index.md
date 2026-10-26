---
title: 'Oplossing: Acroniem'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Je kunt de broncode vinden in het bestand [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Uitvoer

```
HTML
```

## Opmerkingen

1. `$phrase.words` geeft de lijst met woorden. De lus neemt het eerste teken van elk woord met `substr(0, 1)`. Hij plakt dit teken achter `$acronym`.

1. Aan het einde staan alle eerste letters in `$acronym`. Dan maakt `uc` er hoofdletters van: `HTML`.

{% include nav.html %}
