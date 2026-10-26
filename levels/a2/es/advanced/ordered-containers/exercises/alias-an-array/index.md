---
title: Crear un alias de un array
translations_gpt:
---

{% include menu.html %}

## Problema

Aquí tienes un array:

```raku
my @original = 10, 20, 30;
```

Crea un segundo nombre, `@alias`, para el _mismo_ array. No copies el array. Esta vez, agrega un nuevo elemento a `@original` con `push`. Luego imprime `@alias`. Esto muestra que el alias ve más que valores nuevos. También ve cambios en la estructura del array.

## Ejemplo

El programa imprime:

```
[10 20 30 40]
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
