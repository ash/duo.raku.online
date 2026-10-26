---
title: 'Solution: Twee argumenten optellen'
translations_gpt: true
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 Je kunt de broncode vinden in het bestand [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Uitvoer

```console
$ raku two-arguments.raku 2 3
5
```

## Opmerkingen

1. De twee positionele parameters krijgen de twee woorden van de commandoregel.

1. Commandoregelargumenten komen als strings binnen. Maar de `+`-operator maakt er getallen van. Dus geven `2` en `3` samen `5`.

{% include nav.html %}
