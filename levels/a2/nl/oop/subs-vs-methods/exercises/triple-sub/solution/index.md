---
title: 'Oplossing: Verdrievoudigen als subroutine'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Je kunt de broncode vinden in het bestand [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Uitvoer

```
21
```

## Opmerkingen

1. Hier is `triple` een subroutine. Hij staat alleen. Hij krijgt de waarde voor zijn werk als argument.

1. De andere oefening lost dezelfde taak op met een methode. Zo kun je de twee manieren vergelijken.

{% include nav.html %}
