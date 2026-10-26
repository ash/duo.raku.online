---
title: 'Solution: Een week later'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Je kunt de broncode vinden in het bestand [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Uitvoer

```
2027-03-07
7
```

## Opmerkingen

1. `later(:days(7))` zet de datum zeven dagen vooruit. Dat is een week. We kunnen ook `+ 7` schrijven. Maar met het benoemde argument zie je de eenheid.

1. Februari 2027 heeft 28 dagen. De datum een week na de 28e ligt dus in maart. Raku gaat vanzelf door naar maart. Het resultaat is `2027-03-07`.

1. We roepen `day-of-week` aan op de nieuwe datum. Dat geeft `7`. Met dit nummer kun je het resultaat makkelijk controleren. Precies een week later is de dag van de week *dezelfde*. En `2027-02-28` is ook een zondag (`7`). Dus is `7` hier het antwoord dat je verwacht.

{% include nav.html %}
