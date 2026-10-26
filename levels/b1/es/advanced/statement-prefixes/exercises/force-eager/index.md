---
title: Forzar evaluación ansiosa
translations_gpt:
---

{% include menu.html %}

## Problema

El prefijo `eager` hace lo contrario de `lazy`. Hace que Raku produzca toda la lista, así que la lista ya no es perezosa. Muestra la diferencia con `.is-lazy`.

Imprime si el rango infinito `1 .. Inf` es perezoso. Después imprime si `eager 1..3` es perezoso y, por último, si `lazy 1..3` es perezoso. Los resultados deben ser `True`, `False`, `True`.

## Ejemplo

El programa imprime:

```
True
False
True
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
