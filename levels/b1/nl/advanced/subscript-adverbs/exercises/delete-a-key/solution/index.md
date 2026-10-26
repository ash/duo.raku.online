---
title: 'Solution: Een sleutel verwijderen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Het adverb `:delete` verwijdert het item uit de hash. Het geeft ook de waarde terug, maar die negeren we hier.

1. De hash had in het begin drie items, en nu heeft hij er `2`. Dat laat zien dat er één is verwijderd. We tellen met `.elems`, dat niet afhangt van de volgorde van de sleutels. Dus is de uitvoer altijd hetzelfde.

{% include nav.html %}
