---
title: 'Solution: Begin eerst'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Je kunt de broncode vinden in het bestand [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Uitvoer

```
5
```

## Opmerkingen

1. `BEGIN { 2 + 3 }` draait tijdens de compilatie. Het geeft `5`. Hier is het `BEGIN`-blok een expressie. Daarom geeft het zijn waarde terug. Het programma zet die waarde in `$compiled`.

1. De berekening gebeurt maar één keer, tijdens het compileren. Als het programma draait, bevat `$compiled` gewoon de vaste waarde `5`. Je kunt `BEGIN` dus gebruiken om waarden vroeg te berekenen. Het is niet alleen om vroeg iets af te drukken.

{% include nav.html %}
