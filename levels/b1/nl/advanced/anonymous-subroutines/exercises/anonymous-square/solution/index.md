---
title: 'Solution: Een anoniem kwadraat'
translations_gpt: De oplossing van 'Een anoniem kwadraat'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Je kunt de broncode vinden in het bestand [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Uitvoer

```
(1 4 9)
```

## Opmerkingen

1. De `sub ($x) { $x * $x }` heeft geen naam en wordt nooit in een variabele opgeslagen. Hij gaat direct als argument naar `map`.

1. `map` past hem toe op elk element van `1, 2, 3` en maakt er kwadraten van, wat `(1 4 9)` geeft. Een anonieme subroutine zo direct doorgeven is de meest voorkomende reden om er een te schrijven.

{% include nav.html %}
