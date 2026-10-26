---
title: 'Oplossing: Acroniem'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `$phrase.words` geeft de lijst met woorden terug. Voor elk woord neemt de lus het eerste teken met `substr(0, 1)`. Daarna voegt hij dit teken toe aan het einde van `$acronym`.

1. Als alle eerste letters verzameld zijn, maakt `uc` er hoofdletters van: `HTML`.

{% include nav.html %}
