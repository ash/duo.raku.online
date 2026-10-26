---
title: Crear un alias de un array
translations_gpt:
---

{% include menu.html %}

## Problema

Tienes este array:

```raku
my @original = 10, 20, 30;
```

Crea un segundo nombre, `@alias`, para el _mismo_ array, sin copiarlo. Esta vez, agrega (`push`) un nuevo elemento a `@original`, y luego imprime `@alias`. Esto muestra que el alias también ve los cambios de estructura, no solo los de valores.

## Ejemplo

El programa imprime:

```
[10 20 30 40]
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
