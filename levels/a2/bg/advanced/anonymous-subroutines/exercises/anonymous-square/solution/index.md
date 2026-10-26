---
title: 'Solution: Анонимен квадрат'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Можете да намерите изходния код във файла [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Изход

```
(1 4 9)
```

## Коментари

1. Подпрограмата `sub ($x) { $x * $x }` няма име. Програмата никога не я пази в променлива. Тя я дава направо на `map` като аргумент.

1. `map` я използва за всеки елемент от `1, 2, 3`. Тя умножава всяко число по себе си. Резултатът е `(1 4 9)`. Хората най-често пишат анонимна подпрограма точно за това. Те я подават направо, както тук.

{% include nav.html %}
