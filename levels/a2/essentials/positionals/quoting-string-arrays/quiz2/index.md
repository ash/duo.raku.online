---
title: Quiz — Recognising lists
---

{% include menu.html %}

Sometimes lists are confusing. You must learn to see the difference between lists and arrays.

## 1

What does this program print?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(List) | Answer: (: (Array), (List), (Str) :)

## 2

And what does this program print?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Answer: (: (Array), (List), (Str) :)

{% include quiz.html %}

{% include nav.html %}
