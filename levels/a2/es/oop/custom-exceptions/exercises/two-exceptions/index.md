---
title: Dos tipos de excepción
translations_gpt:
---

{% include menu.html %}

## Problema

Crea dos clases de excepción personalizadas, `TooSmall` y `TooBig`. Son clases para tus propios errores. Cada clase hereda de `Exception`. El método `message` de `TooSmall` devuelve `too small`. El método `message` de `TooBig` devuelve `too big`.

Escribe un bucle sobre los dos tipos. Para cada tipo, lanza una excepción de ese tipo. Cada excepción tiene su propio bloque. Añade un phaser `CATCH` con una rama `when` para cada tipo. Para `TooSmall`, imprime `small`. Para `TooBig`, imprime `big`. Así ves que las dos ramas se ejecutan.

## Ejemplo

El programa imprime:

```
small
big
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
