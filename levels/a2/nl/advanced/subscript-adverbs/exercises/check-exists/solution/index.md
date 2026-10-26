---
title: 'Solution: Bestaat de sleutel'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Het adverb `:exists` zegt of de sleutel er is. Het haalt de waarde niet op.

1. Er is geen sleutel `z` in de hash. Dus is het resultaat `False`. Een gewone opzoeking kan de sleutel als neveneffect aanmaken. `:exists` doet dat niet.

{% include nav.html %}
