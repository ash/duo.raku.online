---
title: 'Solution: Sleutel en waarde'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Het adverb `:kv` geeft de sleutel en de waarde terug. Het geeft ze als een lijst.

1. Bij een hash is de sleutel de naam in de subscript. Dus geeft `%h<x>:kv` de lijst `(x 10)`.

{% include nav.html %}
