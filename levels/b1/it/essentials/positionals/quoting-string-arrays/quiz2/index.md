---
title: Quiz 2 — Riconoscimento delle liste
---

{% include menu.html %}

Le liste a volte possono confondere. Devi allenarti a distinguere le liste dagli array.

## 1

Cosa stampa il seguente programma?

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

E per quanto riguarda questo programma?

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
