---
title: Quiz 2 — Reconocer listas
---

{% include menu.html %}

A veces las listas confunden. Debes aprender a ver la diferencia entre listas y arreglos.

## 1

¿Qué imprime este programa?

```raku
my @data = [
    <France Italy Germany>,
    <Canada USA Mexica>,
    <Japan China India>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(Lista) | Respuesta: (: (Arreglo), (Lista), (Str) :)

## 2

¿Y qué imprime este programa?

```raku
my @data = [
    ['France', 'Italy', 'Germany'],
    ['Canada', 'USA', 'Mexica'],
    ['Japan', 'China', 'India'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Arreglo) | Respuesta: (: (Arreglo), (Lista), (Str) :)

{% include quiz.html %}

{% include nav.html %}
