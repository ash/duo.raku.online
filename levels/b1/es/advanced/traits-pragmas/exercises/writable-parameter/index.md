---
title: Un parámetro modificable
translations_gpt:
---

{% include menu.html %}

## Problema

Por defecto, los parámetros de una subrutina son de solo lectura. Esto significa que una rutina no puede cambiar la variable del llamador. El trait `is rw` elimina este límite.

Escribe una subrutina `double` con un parámetro marcado con `is rw`. La subrutina duplica el parámetro en su lugar con `$n *= 2`. Llámala con una variable que contenga `21`. Después imprime la variable para mostrar que ahora vale `42`.

## Ejemplo

El programa imprime:

```
42
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
