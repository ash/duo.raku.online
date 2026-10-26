---
title: 'Solution: Sleutel en waarde'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Je kunt de broncode vinden in het bestand [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Uitvoer

```
(x 10)
```

## Opmerkingen

1. Het adverb `:kv` geeft je zowel de sleutel als de waarde in een lijst.

1. Bij een hash is de sleutel de naam die je in de subscript gebruikt. Dus geeft `%h<x>:kv` de lijst `(x 10)`.

{% include nav.html %}
