---
title: Comparaciones y planes
translations_gpt: true
---

{% include menu.html %}

El módulo `Test` tiene más que `ok` e `is`. Tiene comparaciones para distintos tipos de valores. Estas son las más útiles:

* `is` — comprueba que dos valores son iguales (como cadenas o números)
* `is-deeply` — comprueba que dos estructuras de datos son exactamente iguales, y también sus tipos
* `like` — comprueba que una cadena coincide con una expresión regular
* `isnt` — pasa cuando dos valores **no** son iguales

Usa `is-deeply` para arreglos, hashes y datos dentro de otros datos. Compara la estructura y el tipo de forma exacta:

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

`is` convierte los valores en cadenas. Luego los compara, pero no de forma muy estricta. `is-deeply` es diferente. Con él, las estructuras deben coincidir de verdad. Observa que `done-testing` pone el plan `1..1` al final, después de la comprobación.

`done-testing` puede contar las pruebas por ti. Pero también puedes dar el número al principio, con `plan`. Esto ayuda con un problema. A veces un archivo de pruebas se detiene demasiado pronto. Entonces se salta algunas comprobaciones sin ningún mensaje:

```raku
use Test;

plan 2;
ok True,  'first';
ok 1 < 2, 'second';
```

Ahora el plan está **primero**. Viene antes de los resultados:

```
1..2
ok 1 - first
ok 2 - second
```

Aquí ves en qué se diferencia `plan` de `done-testing`. `plan` imprime el conteo `1..2` arriba, antes de cualquier comprobación. `done-testing` lo imprime justo al final. En cualquier caso, con `plan 2`, la ejecución espera exactamente dos pruebas. Si se ejecutan menos o más pruebas, todo el conjunto de pruebas falla. Usa `plan` si el número de pruebas es fijo y lo conoces. Usa `done-testing` si es más fácil dejar que el módulo de pruebas cuente.

{% include nav.html %}
