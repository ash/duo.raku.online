---
title: Tipado o sin tipar
translations_gpt:
---

{% include menu.html %}

## Problema

Declara dos variables escalares una al lado de la otra. La primera es `$untyped`. No tiene tipo. La segunda es `$typed`. Tiene el tipo `Int`. Vuelca las dos con `dd` mientras todavía están vacías. Luego asigna `42` a cada una. Vuelca las dos otra vez. Mira con atención la salida. `dd` describe los dos contenedores de formas diferentes.

## Ejemplo

El programa imprime esto en el flujo de error estándar:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
