---
title: 'Solution: Planificar dos verificaciones'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Puedes encontrar el código fuente en el archivo [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Salida

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Comentarios

1. `plan 2` da el conteo antes de que se ejecute ninguna prueba, así que la línea `1..2` aparece primero. Si luego el archivo ejecutara un número distinto de comprobaciones, el conjunto de pruebas fallaría. `done-testing` no puede darte esta protección.

1. `is-deeply` comprueba que las dos listas son exactamente iguales, incluidos sus tipos. Ordenar `3, 1, 2` da `1, 2, 3`, que coincide.

1. `is` comprueba si dos valores son simplemente iguales. Si la prueba falla, muestra los dos valores. Aquí, `10 % 3` es `1`, que es el valor esperado. Así que la segunda prueba también pasa.

{% include nav.html %}
