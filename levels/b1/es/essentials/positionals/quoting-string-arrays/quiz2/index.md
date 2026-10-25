---
title: Quiz 2 — Reconocer listas
---

{% include menu.html %}

Las listas a veces pueden ser confusas. Necesitas practicar para distinguir entre listas y arreglos.

## 1

¿Qué imprime el siguiente programa?

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

¿Y qué hay de este programa?

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
