---
title: 'Solution: Een hash subscripten'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Je kunt de broncode vinden in het bestand [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Uitvoer

```
1
```

## Opmerkingen

1. De `< >`-subscript is een postcircumfix-operator. Hij komt na een term, de hash, en staat rond de sleutel.

1. `%h<a>` geeft de waarde onder de sleutel `a`. Die waarde is `1`.

{% include nav.html %}
