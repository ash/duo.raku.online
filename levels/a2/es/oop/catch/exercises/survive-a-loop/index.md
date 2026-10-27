---
title: Sobreviva a un bucle
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe un bucle sobre los números `1`, `2` y `3`. Para cada número, imprime `ok: <n>`. Pero para el número `2`, haz `die "bad: 2"`. Añade un phaser `CATCH` dentro del cuerpo del bucle. Este phaser captura el error e imprime `caught: <mensaje>`. Así una vuelta mala no detiene todo el bucle.

## Ejemplo

El programa imprime:

```
ok: 1
caught: bad: 2
ok: 3
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
