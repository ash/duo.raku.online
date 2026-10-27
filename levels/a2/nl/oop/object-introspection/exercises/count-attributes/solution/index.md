---
title: 'Oplossing: Tel de attributen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 Je kunt de broncode vinden in het bestand [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Uitvoer

```
2
```

## Opmerkingen

1. `.^attributes` geeft een lijst terug. Daarin staan de attributen van de klasse.

1. `.elems` telt ze. De klasse `Point` heeft twee attributen. Dus is het antwoord `2`.

{% include nav.html %}
