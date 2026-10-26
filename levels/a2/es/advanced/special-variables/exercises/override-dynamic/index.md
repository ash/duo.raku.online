---
title: Sobrescribir la dinámica
translations_gpt: true
---

{% include menu.html %}

## Problema

Muestra cómo una variable dinámica pasa por una rutina en el medio. Esta rutina no sabe nada de la variable.

Escribe una subrutina `log-it($msg)`. Esta subrutina imprime el mensaje. Antes del mensaje, pone una variable dinámica `$*prefix`. Escribe una segunda subrutina, `task`. Esta solo llama a `log-it('working')`. Ella misma nunca usa `$*prefix`. Luego llama a `task` dos veces. Cada vez, llámala desde dentro de un bloque. Cada bloque da a `$*prefix` un valor diferente: primero `INFO`, luego `DEBUG`.

## Ejemplo

El programa imprime:

```
INFO: working
DEBUG: working
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
