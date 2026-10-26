---
title: Tipado o sin tipar
translations_gpt:
---

{% include menu.html %}

## Problema

Declara dos variables escalares una al lado de la otra: `$untyped`, que no tiene tipo, y `$typed`, que tiene el tipo `Int`. Vuelca ambas con `dd` mientras todavía están vacías. Luego asigna `42` a cada una y vuelca ambas de nuevo. Observa con atención cómo `dd` describe de forma diferente los dos contenedores.

## Ejemplo

El programa imprime esto en la salida de error estándar:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
