---
title: Adverbios de entrecomillado
---

{% include menu.html %}

Puedes ajustar el comportamiento de una construcción de entrecomillado con _adverbios_. Cada característica del entrecomillado tiene su propio adverbio, que activa o desactiva solo esa característica. Las características son interpolar escalares, ejecutar closures (código entre llaves) y procesar barras invertidas. Así puedes empezar desde `q` o `Q`. Luego vuelves a añadir exactamente las características que necesitas.

Algunos adverbios comunes:

* `:s` / `:scalar` — interpola variables escalares (`$x`)
* `:c` / `:closure` — interpola código en `{ … }`
* `:b` / `:backslash` — procesa secuencias de escape con barra invertida como `\n`

Añade un adverbio a `q` para activar una sola característica. Por ejemplo, permite código entre llaves pero nada más:

```raku
say q/result: {3 * 4}/;   # result: {3 * 4}  — plain q leaves the block untouched
say q:c/result: {3 * 4}/; # result: 12        — :c runs the block
```

Con `q` simple, `{ 3 * 4 }` se imprime exactamente como está escrito. Solo `:c` hace que el bloque se ejecute e inserta su valor. Una `$variable`, en cambio, seguiría igual. Observa los delimitadores `/…/` aquí. También podrías usar `{…}` como delimitadores, y el código compilaría igual. El compilador cuenta bien las llaves anidadas. Pero entonces el `{ 3 * 4 }` interior sería solo parte del texto, no un closure. Así que `:c` lo dejaría tal como está. Por eso, si el texto contiene un bloque `{ … }`, elige un delimitador distinto de `{…}`. Así el closure se ejecuta de verdad. También puedes añadir interpolación escalar a `Q`, que normalmente no cambia nada:

```raku
my $name = 'Anna';
say Q:s{Hi, $name}; # Hi, Anna
```

Con un `!`, los adverbios también **desactivan** características. Aquí ves cómo usar `qq` y dejar `$` tal como está:

```raku
my $price = 5;
say qq:!s{costs $price dollars}; # costs $price dollars
```

`qq` es lo mismo que `Q` con todos los adverbios de interpolación activados. `q` es lo mismo que `Q` con un conjunto más pequeño de ellos. Entre estos dos extremos, los adverbios te dejan controlar cada detalle.

{% include nav.html %}
