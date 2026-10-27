---
title: Empareje el tipo
translations_gpt:
---

{% include menu.html %}

## Problema

Los errores incorporados tienen sus propios tipos de excepción, y puedes comparar con ellos. Escribe un bloque que calcule `1 / 0` e intente usar el resultado. Esto lanza una `X::Numeric::DivideByZero`. En el phaser `CATCH` del bloque, usa `when X::Numeric::DivideByZero` para comparar con este tipo exacto. Después imprime `cannot divide by zero`.

## Ejemplo

El programa imprime:

```
cannot divide by zero
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
