---
title: Empareje el tipo
translations_gpt:
---

{% include menu.html %}

## Problema

Cada error incorporado tiene su propio tipo de excepción. Puedes comparar con estos tipos. Escribe un bloque que calcule `1 / 0`. Después el bloque intenta usar el resultado. Esto lanza una `X::Numeric::DivideByZero`. Añade un phaser `CATCH` al bloque. Dentro, usa `when X::Numeric::DivideByZero`. Esto coincide exactamente con este tipo. Después imprime `cannot divide by zero`.

## Ejemplo

El programa imprime:

```
cannot divide by zero
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
