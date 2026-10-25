---
title: Quiz 2 — Riconoscimento delle liste
---

{% include menu.html %}

A volte le liste confondono. Devi imparare a vedere la differenza tra liste e array.

## 1

Cosa stampa questo programma?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(Lista) | Risposta: (: (Array), (Lista), (Str) :)

## 2

E cosa stampa questo programma?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Risposta: (: (Array), (Lista), (Str) :)

{% include quiz.html %}

{% include nav.html %}
