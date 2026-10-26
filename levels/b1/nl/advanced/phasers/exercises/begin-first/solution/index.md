---
title: 'Solution: Begin eerst'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `BEGIN { 2 + 3 }` draait tijdens de compilatie en geeft `5`. Als je een `BEGIN`-blok als expressie gebruikt, geeft het zijn waarde terug. Hier wordt die waarde toegekend aan `$compiled`.

1. De berekening gebeurt maar één keer, tijdens het compileren. Als het programma draait, bevat `$compiled` gewoon de constante `5`. Zo kan `BEGIN` waarden van tevoren berekenen. Het is niet alleen bedoeld om vroeg iets af te drukken.

{% include nav.html %}
