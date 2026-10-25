---
title: Tests 2 — Sarakstu atpazīšana
---

{% include menu.html %}

Dažreiz saraksti ir mulsinoši. Jums jāiemācās redzēt atšķirību starp sarakstiem un masīviem.

## 1

Ko izdrukā šī programma?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(Saraksts) | Atbilde: (: (Masīvs), (Saraksts), (Str) :)

## 2

Un ko izdrukā šī programma?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Masīvs) | Atbilde: (: (Masīvs), (Saraksts), (Str) :)

{% include quiz.html %}

{% include nav.html %}
