---
title: Sobrescribir la dinámica
translations_gpt: true
---

{% include menu.html %}

## Problema

Muestra cómo una variable dinámica pasa a través de una rutina intermedia. Esa rutina no sabe nada de ella.

Escribe una subrutina `log-it($msg)` que imprima el mensaje con una variable dinámica `$*prefix` delante. Escribe una segunda subrutina `task` que solo llame a `log-it('working')`. Ella misma nunca menciona `$*prefix`. Luego llama a `task` dos veces, cada vez desde dentro de un bloque. Cada bloque da a `$*prefix` un valor diferente: primero `INFO`, luego `DEBUG`.

## Ejemplo

El programa imprime:

```
INFO: working
DEBUG: working
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
