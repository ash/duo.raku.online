---
title: Sobreviva a un bucle
translations_gpt:
---

{% include menu.html %}

## Problema

Recorre los números `1`, `2` y `3`. Para cada número, imprime `ok: <n>`. Pero cuando el número sea `2`, debes hacer `die "bad: 2"` en su lugar. Añade dentro del cuerpo del bucle un phaser `CATCH` que imprima `caught: <mensaje>`. Así, una vuelta mala no detiene todo el bucle.

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
