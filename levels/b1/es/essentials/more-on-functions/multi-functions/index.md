---
title: Multi-funciones
---

{% include menu.html %}

Raku tiene _despacho múltiple_ basado en la firma de la función. Te permite crear funciones con el mismo nombre pero con diferentes tipos de datos de entrada. Usa el declarador `multi` para cada variante de la función.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Está bien omitir `sub` después de `multi`.

Cuando hay dos variantes de la misma función, el compilador hace un despacho múltiple. Su elección depende de los argumentos que ve en la llamada a la función. Compara estas dos llamadas:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

La primera llamada ejecuta la variante con parámetros enteros. La segunda llamada ejecuta la otra variante, que espera dos cadenas.

## Parámetros literales

Un uso interesante de las multi-funciones son las variantes con valores literales como parámetros. Mira las siguientes dos variantes:

```raku
multi sub f(42) {say 'Esta es la respuesta'}
multi sub f($x) {say "$x no es la respuesta"}
```

La primera variante se ejecuta solo cuando llamas a la función con exactamente 42. En todos los otros casos, Raku usa la segunda variante. No importa en qué orden se definen estas funciones.

```raku
f(10); # 10 no es la respuesta
f(42); # Esta es la respuesta
```

{% include nav.html %}
