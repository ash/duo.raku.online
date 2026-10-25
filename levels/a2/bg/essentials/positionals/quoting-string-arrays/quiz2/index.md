---
title: Тест 2 — Разпознаване на списъци
---

{% include menu.html %}

Понякога списъците са объркващи. Трябва да се научите да виждате разликата между списъци и масиви.

## 1

Какво отпечатва тази програма?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(List) | Отговор: (: (Array), (List), (Str) :)

## 2

А какво отпечатва тази програма?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Отговор: (: (Array), (List), (Str) :)

{% include quiz.html %}

{% include nav.html %}
