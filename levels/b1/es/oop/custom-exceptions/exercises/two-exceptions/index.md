---
title: Dos tipos de excepción
translations_gpt:
---

{% include menu.html %}

## Problema

Define dos clases de excepción personalizadas, `TooSmall` y `TooBig`. Cada una de ellas hereda de `Exception`. Sus métodos `message` devuelven `too small` y `too big`, en ese orden.

Recorre los dos tipos. Para cada uno, lanza una excepción de ese tipo dentro de su propio bloque. Usa un phaser `CATCH` con una rama `when` para cada tipo. Este phaser imprime `small` para `TooSmall` y `big` para `TooBig`. Así puedes ver que se usan las dos ramas.

## Ejemplo

El programa imprime:

```
small
big
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
