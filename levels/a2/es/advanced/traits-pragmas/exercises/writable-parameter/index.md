---
title: Un parámetro modificable
translations_gpt:
---

{% include menu.html %}

## Problema

Normalmente, los parámetros de una subrutina son de solo lectura. Así, una rutina no puede cambiar la variable del llamador. El trait `is rw` quita este límite.

Escribe una subrutina `double`. Tiene un parámetro con el trait `is rw`. La subrutina duplica el propio parámetro: `$n *= 2`. Llama a `double` con una variable que contiene `21`. Después imprime la variable. Ahora vale `42`.

## Ejemplo

El programa imprime:

```
42
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
