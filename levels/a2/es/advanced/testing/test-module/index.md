---
title: El módulo Test
translations_gpt: true
---

{% include menu.html %}

Para tener las herramientas de pruebas, escribe `use Test`. La comprobación más simple es `ok`. Pasa cuando su condición es verdadera. Cada comprobación también puede tener una descripción:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Ejecuta este programa. Imprime el resultado en el formato estándar para pruebas. Este formato se llama _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Para cada comprobación que pasa, ves `ok` con su número y su descripción. Una comprobación que falla muestra `not ok`. La última línea, `1..2`, es el _plan_. Dice cuántas pruebas se ejecutaron. La llamada a `done-testing` al final imprime este plan automáticamente.

A veces esperas un valor concreto. Entonces `is` es más claro que `ok`. Si la prueba falla, `is` muestra dos valores. Muestra el valor que esperas y el valor que obtienes:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Esto imprime `ok 1 - addition works`. Ahora vamos a ver cómo `is` informa de un fallo. Dale a `is` un valor esperado incorrecto:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Ahora la comprobación falla. La salida muestra exactamente qué está mal:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

La línea `not ok` muestra el fallo. Debajo, otras líneas explican el problema. Muestran el valor que esperas y el valor que obtienes. Así que, cuando necesitas un valor concreto, `is` ayuda más que `ok` solo.

Con `ok`, `is` y `done-testing`, ya puedes escribir un archivo de pruebas útil. El siguiente tema muestra [las otras comparaciones](/es/advanced/testing/comparisons).

{% include nav.html %}
