---
title: 'Solution: Een week later'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `later(:days(7))` zet de datum zeven dagen vooruit, en dat is een week. We kunnen ook `+ 7` schrijven, maar het benoemde argument laat de eenheid duidelijk zien.

1. Februari 2027 heeft maar 28 dagen. Een week na de 28e gaat Raku dus vanzelf door naar maart. Het resultaat is `2027-03-07`.

1. Als je `day-of-week` aanroept op de nieuwe datum, krijg je `7`. Daardoor is het resultaat makkelijk te controleren. Precies een week later moet de dag van de week *dezelfde* zijn als ervoor. En `2027-02-28` is ook een zondag (`7`), dus `7` is het antwoord dat je verwacht.

{% include nav.html %}
