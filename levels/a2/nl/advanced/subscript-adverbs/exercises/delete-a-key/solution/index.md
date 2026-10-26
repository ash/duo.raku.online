---
title: 'Solution: Een sleutel verwijderen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Je kunt de broncode vinden in het bestand [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Uitvoer

```
2
```

## Opmerkingen

1. Het adverb `:delete` verwijdert het item uit de hash. Het geeft ook de waarde terug, maar die gebruiken we hier niet.

1. Eerst had de hash drie items. Nu heeft hij er `2`. Dus is er één item weg. We tellen de items met `.elems`. De volgorde van de sleutels maakt daarvoor niet uit. Dus is de uitvoer altijd hetzelfde.

{% include nav.html %}
