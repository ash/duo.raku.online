---
title: 'Solution: Forzar evaluación ansiosa'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Puedes encontrar el código fuente en el archivo [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Salida

```
True
False
True
```

## Comentarios

1. Un rango hasta `Inf` no se puede calcular todo de una vez, así que es perezoso. `.is-lazy` devuelve `True`.

1. El prefijo `eager` hace que Raku produzca una lista enseguida. Así que el resultado ya no es perezoso. `.is-lazy` devuelve `False`. Esto es lo contrario directo de marcar una lista como `lazy`.

1. No uses `eager` con un rango que no tiene final. `eager 1 .. Inf` intenta calcular todos los elementos de una vez. Así que el programa simplemente se cuelga y usa cada vez más memoria hasta que alguien lo detiene a la fuerza. `eager` solo es seguro con listas que sabes que son finitas.

1. Lo contrario también funciona. `lazy 1..3` marca como perezoso incluso un rango corto y finito, así que `.is-lazy` devuelve `True`. El prefijo pone la marca de pereza, sin importar lo pequeña que sea la lista. Una lista no tiene que ser infinita para ser perezosa.

{% include nav.html %}
