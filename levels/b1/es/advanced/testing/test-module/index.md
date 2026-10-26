---
title: El módulo Test
translations_gpt: true
---

{% include menu.html %}

Cargas las herramientas de pruebas con `use Test`. La comprobación más básica es `ok`, que pasa cuando su condición es verdadera. Cada comprobación también puede llevar una descripción:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Cuando lo ejecutas, imprime esto en el formato estándar de pruebas llamado _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Cada comprobación que pasa se muestra como `ok` con su número y su descripción. Una comprobación que falla mostraría `not ok`. La última línea, `1..2`, es el _plan_, que dice cuántas pruebas se ejecutaron. La llamada a `done-testing` al final imprime este plan automáticamente.

Cuando esperas un valor concreto, `is` es más claro que `ok`. Si la prueba falla, `is` muestra tanto el valor esperado como el valor real:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Esto imprime `ok 1 - addition works`. Para ver cómo `is` informa de un problema, dale un valor esperado incorrecto:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Ahora la comprobación falla, y la salida explica exactamente qué salió mal:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

La línea `not ok` marca el fallo. Las líneas de debajo muestran qué se esperaba y qué obtuvo realmente el programa. Así que, cuando importa un valor concreto, `is` es más útil que un simple `ok`.

`ok`, `is` y `done-testing` ya son suficientes para un archivo de pruebas útil. El siguiente tema añade [las otras comparaciones](/es/advanced/testing/comparisons).

{% include nav.html %}
