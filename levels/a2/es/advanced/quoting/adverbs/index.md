---
title: Adverbios de entrecomillado
---

{% include menu.html %}

Puedes cambiar cómo funciona una construcción de entrecomillado. Para esto, usas _adverbios_. Una construcción de entrecomillado tiene varias características. Por ejemplo, puede interpolar escalares. Puede ejecutar código entre llaves. Puede procesar barras invertidas. Cada característica tiene su propio adverbio. El adverbio activa o desactiva esa característica. Así puedes empezar desde `q` o `Q`. Luego añades exactamente las características que necesitas.

Aquí tienes algunos adverbios comunes:

* `:s` / `:scalar` — pone los valores de las variables escalares (`$x`) en la cadena
* `:c` / `:closure` — ejecuta el código en `{ … }` y pone el resultado en la cadena
* `:b` / `:backslash` — procesa las secuencias de escape con barra invertida, como `\n`

Añade un adverbio a `q`. Entonces `q` tiene una característica. Por ejemplo, deja que ejecute código, pero nada más:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Con `q` simple, Raku imprime `{ 3 * 4 }` tal como está. Solo `:c` ejecuta el bloque. Entonces Raku pone el resultado en la cadena. Una `$variable` sigue igual. Mira los delimitadores aquí: `/…/`. Los delimitadores son los caracteres alrededor del texto. También puedes usar `{…}` como delimitadores. No hay error, porque el compilador cuenta bien las llaves. Pero entonces el `{ 3 * 4 }` de dentro es solo una parte del texto. No es código. Así que `:c` no lo ejecuta, y queda tal como está. ¿Tiene el texto un bloque `{ … }`? Entonces no uses `{…}` como delimitadores. Usa otros delimitadores. Así el código entre las llaves se ejecuta. También puedes añadir interpolación escalar a `Q`. Sin ella, `Q` deja todo el texto tal como está:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Los adverbios también pueden **desactivar** características. Para esto, escribe un `!`. Aquí usamos `qq`, pero `$` sigue siendo un carácter normal:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` es lo mismo que `Q` con todos los adverbios de interpolación activados. `q` es lo mismo que `Q` con menos adverbios activados. Con los adverbios, puedes elegir cada característica entre estos dos extremos.

{% include nav.html %}
