---
title: 'Solution: Een Booleaanse controle'
translations_gpt: The solution of 'A Boolean check'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my @empty;
say ?@empty;
```

🦋 Je kunt de broncode vinden in het bestand [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Uitvoer

```
False
```

## Opmerkingen

1. De `?`-prefix stelt Booleaanse context in.

1. Een lege array is onwaar, en dat is precies waar `if @array` op rekent.

{% include nav.html %}
