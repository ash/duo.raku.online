---
title: Una variable our
translations_gpt:
---

{% include menu.html %}

## Problema

Solo `our` hace visible un nombre fuera de su paquete, mientras que `my` lo mantiene privado. Crea un paquete `Config` con una variable `our` llamada `$port` con valor `8080`. En el mismo paquete, añade **también** una variable `my` llamada `$secret` con valor `42`. Desde fuera, imprime `$Config::port`. Luego imprime si `$Config::secret` está definida. No debería estarlo, porque una variable `my` no forma parte del espacio de nombres.

## Ejemplo

El programa imprime:

```
8080
False
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
