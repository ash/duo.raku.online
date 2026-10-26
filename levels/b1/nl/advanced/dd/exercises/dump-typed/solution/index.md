---
title: 'Solution: Een getypte variabele dumpen'
translations_gpt: De oplossing van 'Een getypeerde variabele dumpen'
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

## Code

```raku
my Int $n = 42;
dd $n;
```

🦋 Je kunt de broncode vinden in het bestand [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Uitvoer

```
Int $n = 42
```

## Opmerkingen

1. De variabele heeft een gedeclareerd type, dus `dd` toont dat voor de naam: `Int $n = 42`.

1. Voor een variabele zonder type zou `dd` alleen `$n = 42` tonen, zonder type ervoor.

{% include nav.html %}
