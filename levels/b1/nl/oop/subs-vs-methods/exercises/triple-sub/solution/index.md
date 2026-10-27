---
title: 'Oplossing: Verdrievoudigen als subroutine'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Als subroutine staat `triple` op zichzelf. Hij krijgt de waarde waarmee hij werkt als argument.

1. De andere oefening van dit paar lost dezelfde taak op met een methode. Zo kun je beide aanpakken vergelijken.

{% include nav.html %}
