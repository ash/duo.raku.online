---
title: Una caja con tamaño
translations_gpt:
---

{% include menu.html %}

## Problema

Define un rol `Sized` con un método `describe`. Devuelve la cadena `size is <tamaño>`, y para ello usa `self.size`.

Después define una clase `Box` que asuma el rol `Sized` y tenga un atributo `size`. Crea una caja con el tamaño `10`. Imprime el resultado de llamar a `describe` sobre ella. En una segunda línea, imprime si la caja `~~ Sized`. Es decir, imprime si Raku ve que la caja tiene el rol.

## Ejemplo

El programa imprime:

```
size is 10
True
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
