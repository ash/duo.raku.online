---
title: Multi-funciones
---

{% include menu.html %}

Raku tiene _despacho múltiple_ basado en la firma de una función. Con él, varias funciones pueden tener el mismo nombre. Pero toman diferentes tipos de datos de entrada. Escribe el declarador `multi` antes de cada variante de la función.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Puedes omitir `sub` después de `multi`.

Aquí, la misma función tiene dos variantes. El compilador mira los argumentos en cada llamada. Después elige la variante correcta. Esto es el despacho múltiple. Compara estas dos llamadas:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

La primera llamada ejecuta la variante con parámetros enteros. La segunda llamada ejecuta la segunda variante. Esa variante espera dos cadenas.

## Parámetros literales

Aquí tienes un caso interesante. Una variante puede tener un valor literal como parámetro. Un literal es un valor escrito en el código, como `42`. Mira estas dos variantes:

```raku
multi sub f(42) {say 'Esta es la respuesta'}
multi sub f($x) {say "$x no es la respuesta"}
```

Raku ejecuta la primera variante solo cuando el argumento es exactamente 42. En todos los otros casos, Raku ejecuta la segunda variante. El orden de las dos definiciones no importa.

```raku
f(10); # 10 no es la respuesta
f(42); # Esta es la respuesta
```

{% include nav.html %}
