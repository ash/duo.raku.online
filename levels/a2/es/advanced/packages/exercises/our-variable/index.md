---
title: Una variable our
translations_gpt:
---

{% include menu.html %}

## Problema

Solo `our` hace visible un nombre fuera de su paquete. `my` mantiene el nombre privado. Crea un paquete `Config`. Tiene una variable `our` llamada `$port` con el valor `8080`. **También** tiene una variable `my` llamada `$secret` con el valor `42`. Desde fuera del paquete, imprime `$Config::port`. Luego imprime si `$Config::secret` está definida. No debe estar definida. Una variable `my` no forma parte del espacio de nombres.

## Ejemplo

El programa imprime:

```
8080
False
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
