---
title: Тест 2 — Розпізнавання списків
---

{% include menu.html %}

Іноді списки заплутують. Ви повинні навчитися бачити різницю між списками і масивами.

## 1

Що виводить ця програма?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(List) | Відповідь: (: (Array), (List), (Str) :)

## 2

А що виводить ця програма?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Відповідь: (: (Array), (List), (Str) :)

{% include quiz.html %}

{% include nav.html %}
