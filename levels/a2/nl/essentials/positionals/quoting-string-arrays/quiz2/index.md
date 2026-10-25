---
title: Quiz 2 — Herkennen van lijsten
---

{% include menu.html %}

Soms zijn lijsten verwarrend. Je moet leren het verschil tussen lijsten en arrays te zien.

## 1

Wat print dit programma?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(List) | Antwoord: (: (Array), (List), (Str) :)

## 2

En wat print dit programma?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Antwoord: (: (Array), (List), (Str) :)

{% include quiz.html %}

{% include nav.html %}
