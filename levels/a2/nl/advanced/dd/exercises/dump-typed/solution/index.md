---
title: 'Solution: Een getypte variabele dumpen'
translations_gpt: De oplossing van 'Een getypeerde variabele dumpen'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De variabele heeft een gedeclareerd type. Dus `dd` toont het type voor de naam: `Int $n = 42`.

1. Voor een variabele zonder type toont `dd` alleen `$n = 42`. Er staat geen type voor.

{% include nav.html %}
