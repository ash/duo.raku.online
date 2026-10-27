---
title: Una caja con tamaño
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un rol `Sized` con un método `describe`. El método devuelve la cadena `size is <tamaño>`. Para el tamaño, usa `self.size`.

Después crea una clase `Box`. Asume el rol `Sized` y tiene un atributo `size`. Crea una caja con el tamaño `10`. Llama a `describe` sobre ella e imprime el resultado. En una segunda línea, imprime el resultado de `~~ Sized` para la caja. Muestra si la caja cuenta como un objeto con este rol.

## Ejemplo

El programa imprime:

```
size is 10
True
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
