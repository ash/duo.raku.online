---
title: Silenciar una advertencia
translations_gpt:
---

{% include menu.html %}

## Problema

`quietly` oculta advertencias. Como `do`, devuelve el valor de su bloque. Crea una variable para un nombre, pero no le des un valor. Después construye un saludo `"Hello, " ~ $name ~ "!"` dentro de un bloque `quietly`. Así la advertencia de «valor no inicializado» queda oculta. Asigna el valor del bloque a `$greeting` e imprímelo.

## Ejemplo

El programa imprime:

```
Hello, !
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
