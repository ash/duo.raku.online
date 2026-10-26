---
title: 'Solution: Een blok betreden'
translations_gpt: De oplossing van 'Een blok betreden'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Je kunt de broncode vinden in het bestand [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Uitvoer

```
--entering
body 1
--entering
body 2
```

## Opmerkingen

1. `ENTER` draait elke keer als het programma het blok binnengaat. Hij draait vlak voor de body. De lus gaat in elke ronde één keer zijn body binnen. Het programma drukt dus `--entering` af vóór elke `body`-regel.

1. Dit is het verschil tussen `ENTER` en `FIRST`. Met `FIRST` draait de code maar één keer voor de hele lus. `ENTER` draait elke keer als het programma het blok binnengaat.

{% include nav.html %}
