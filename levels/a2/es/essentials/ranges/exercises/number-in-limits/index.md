---
title: Si el número está dentro de los límites
---

{% include menu.html %}

## Problema

Escribe un programa. Pide al usuario tres números: `$begin`, `$end` y `$n`. Luego comprueba si `$n` está en el rango `[$begin, $end)`. Este rango tiene `$begin`, pero no `$end`. El programa imprime `True` o `False`.

Los números cumplen esta condición: `$begin < $end + 1`. Puedes estar seguro de esto. No añadas código para comprobarlo.

## Ejemplo

Aquí hay una posible salida del programa en los dos casos:

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
