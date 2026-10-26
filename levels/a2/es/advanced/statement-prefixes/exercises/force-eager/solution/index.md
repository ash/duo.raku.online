---
title: 'Solution: Forzar evaluación ansiosa'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Raku no puede calcular de una vez un rango hasta `Inf`. Así que el rango es perezoso, y `.is-lazy` da `True`.

1. El prefijo `eager` hace que Raku produzca una lista enseguida. Así que el resultado ya no es perezoso, y `.is-lazy` da `False`. Esto es justo lo contrario de marcar una lista como `lazy`.

1. No uses `eager` con un rango sin final. `eager 1 .. Inf` intenta calcular todos los elementos de una vez. Así que el programa se queda colgado. Nunca termina. Usa cada vez más memoria. Esto sigue hasta que alguien detiene el programa. Usa `eager` solo con listas que sabes que tienen final.

1. También funciona al revés. `lazy 1..3` marca un rango corto como perezoso. Este rango tiene final, pero aun así es perezoso. Así que `.is-lazy` da `True`. El prefijo hace perezosa cualquier lista, aunque sea pequeña. Una lista no tiene que ser infinita para ser perezosa.

{% include nav.html %}
