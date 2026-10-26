---
title: 'Solution: Planificar dos verificaciones'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `plan 2` da el conteo antes de ejecutar ninguna prueba. Así que la línea `1..2` sale primero. El archivo puede ejecutar un número distinto de comprobaciones. Entonces todo el conjunto de pruebas falla. `done-testing` no puede protegerte de esta forma.

1. `is-deeply` comprueba que las dos listas son exactamente iguales, y también sus tipos. Ordenar `3, 1, 2` da `1, 2, 3`. Esto coincide.

1. `is` comprueba que dos valores son iguales. Si no lo son, muestra los dos valores. Aquí, `10 % 3` es `1`. Este es el valor esperado. Así que la segunda prueba también pasa.

{% include nav.html %}
