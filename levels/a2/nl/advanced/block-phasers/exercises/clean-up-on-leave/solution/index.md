---
title: 'Solution: Opruimen bij verlaten'
translations_gpt: De oplossing van 'Opruimen bij verlaten'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Je kunt de broncode vinden in het bestand [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Uitvoer

```
Working
Cleanup
```

## Opmerkingen

1. Eerst drukt het programma `Working` af. Dan verlaat `return` meteen de subroutine. Het programma drukt `never reached` dus nooit af.

1. De body stopt vroeg. Maar de `LEAVE`-phaser draait toch bij het weggaan. Hij drukt `Cleanup` af. Daar kun je altijd zeker van zijn. Daarom is `LEAVE` de juiste plek om resources vrij te geven. Hij draait altijd, hoe het blok ook eindigt.

{% include nav.html %}
