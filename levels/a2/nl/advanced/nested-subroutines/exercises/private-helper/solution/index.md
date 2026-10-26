---
title: 'Solution: Een privéhulpfunctie'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Je kunt de broncode vinden in het bestand [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Uitvoer

```
16
```

## Opmerkingen

1. De hulpfunctie `double` staat binnen `stats`. Dus kun je haar alleen daar zien. Andere delen van het programma kunnen haar niet aanroepen.

1. `stats` gebruikt haar twee keer. `double(3)` is `6`, en `double(5)` is `10`. Hun som is `16`.

{% include nav.html %}
