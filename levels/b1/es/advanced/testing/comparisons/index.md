---
title: Comparaciones y planes
translations_gpt: true
---

{% include menu.html %}

Además de `ok` e `is`, el módulo `Test` tiene comparaciones para distintos tipos de valores. Aquí tienes las más útiles:

* `is` — comprueba si dos valores son iguales (como cadenas o números)
* `is-deeply` — comprueba que dos estructuras de datos son exactamente iguales, incluidos sus tipos
* `like` — comprueba que una cadena coincide con una expresión regular
* `isnt` — pasa cuando dos valores **no** son iguales

`is-deeply` es la opción correcta para arreglos, hashes y datos anidados. Compara exactamente tanto la estructura como el tipo:

```raku
use Test;

my @reversed = (1, 2, 3).reverse;
is-deeply @reversed, [3, 2, 1], 'reversed';

done-testing;
```

Esto imprime:

```
ok 1 - reversed
1..1
```

`is` convertiría los valores en cadenas y los compararía de forma flexible. Pero `is-deeply` exige que las estructuras coincidan de verdad. Observa que `done-testing` pone el plan `1..1` al final, después de la comprobación.

No tienes que dejar que `done-testing` cuente las pruebas por ti. En su lugar, puedes dar el número al principio con `plan`. Esto te protege de un archivo de pruebas que se detiene antes de tiempo y se salta algunas comprobaciones sin avisar:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Esta vez, el plan aparece **primero**, antes de los resultados:

```
1..2
ok 1 - first
ok 2 - second
```

Esta es la diferencia con `done-testing` que puedes ver. `plan` imprime el conteo `1..2` arriba, antes de que se ejecute ninguna comprobación. En cambio, `done-testing` lo imprime justo al final. En cualquier caso, con `plan 2` la ejecución espera exactamente dos pruebas. Si se ejecutan menos o más pruebas, el conjunto de pruebas se marca como fallido. Usa `plan` cuando el número de pruebas es fijo y conocido. Usa `done-testing` cuando es más fácil dejar que el marco de pruebas cuente.

{% include nav.html %}
