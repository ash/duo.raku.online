---
title: Si el número está dentro de los límites
---

{% include menu.html %}

## Problema

Escribe un programa que pida al usuario ingresar tres números: `$begin`, `$end` y `$n`. Imprime `True` si `$n` está en el rango `[$begin, $end)`, o `False` en caso contrario. Este rango incluye `$begin` pero excluye `$end`.

Puedes suponer que los números ingresados cumplen la condición `$begin < $end + 1`. Pero no añadas código para comprobarlo.

## Ejemplo

Abajo puedes ver una posible salida del programa para ambos casos:

```console
$ raku number-in-limits.raku
Desde (incluyendo): 10
Hasta (excluyendo): 20
¿Cuál es el número? 15
True

$ raku number-in-limits.raku
Desde (incluyendo): 10
Hasta (excluyendo): 20
¿Cuál es el número? 30
False
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
