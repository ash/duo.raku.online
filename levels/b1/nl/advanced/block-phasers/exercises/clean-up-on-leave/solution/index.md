---
title: 'Solution: Opruimen bij verlaten'
translations_gpt: De oplossing van 'Opruimen bij verlaten'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Nadat `Working` is afgedrukt, verlaat `return` meteen de subroutine. Daarom wordt `never reached` nooit afgedrukt.

1. De body werd vroeg verlaten. Toch draait de `LEAVE`-phaser bij het weggaan en drukt hij `Cleanup` af. Daar kun je altijd op rekenen. Dat is precies waarom `LEAVE` de juiste plek is om resources vrij te geven. Hij draait, hoe het blok ook eindigt.

{% include nav.html %}
