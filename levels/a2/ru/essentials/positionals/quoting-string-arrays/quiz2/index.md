---
title: 'Тест 2: Распознование списков'
---

{% include menu.html %}

Иногда в списках легко запутаться. Вам нужно научиться видеть разницу между списками и массивами.

## 1

Что выводит эта программа?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(List) | Ответ: (: (Array), (List), (Str) :)

## 2

А что выводит эта программа?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Ответ: (: (Array), (List), (Str) :)

{% include quiz.html %}

{% include nav.html %}
