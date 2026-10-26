---
title: 'Solution: Bestaat de sleutel'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Je kunt de broncode vinden in het bestand [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Uitvoer

```
False
```

## Opmerkingen

1. Het adverb `:exists` vertelt je of de sleutel er is. Het haalt de waarde niet op.

1. Er is geen sleutel `z` in de hash, dus het resultaat is `False`. Een gewone opzoeking kan de sleutel als neveneffect aanmaken, maar `:exists` doet dat niet.

{% include nav.html %}
