---
title: Quiz 2 — Agnoscens listae
---

{% include menu.html %}

Interdum indices te confundunt. Discere debes discrimen inter indices et arrays videre.

## 1

Quid hoc programma imprimit?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(List) | Responsum: (: (Array), (List), (Str) :)

## 2

Et quid hoc programma imprimit?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Responsum: (: (Array), (List), (Str) :)

{% include quiz.html %}

{% include nav.html %}
