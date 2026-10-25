---
title: Kvizo 2 — Rekonante listojn
---

{% include menu.html %}

Foje listoj estas konfuzaj. Vi devas lerni vidi la diferencon inter listoj kaj tabeloj.

## 1

Kion presas ĉi tiu programo?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(Listo) | Respondo: (: (Tabelo), (Listo), (Str) :)

## 2

Kaj kion presas ĉi tiu programo?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Tabelo) | Respondo: (: (Tabelo), (Listo), (Str) :)

{% include quiz.html %}

{% include nav.html %}
