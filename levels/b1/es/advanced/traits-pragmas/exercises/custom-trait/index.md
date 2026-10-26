---
title: Un trait personalizado
translations_gpt:
---

{% include menu.html %}

## Problema

Un trait personalizado puede recibir un argumento. No tiene que estar solo presente o ausente. Escribe un trait `is role(...)` que reciba una cadena. Guarda el rol de cada subrutina en un hash. La clave del hash es el nombre de la subrutina.

Aplica `is role('admin')` a una subrutina `login`. Después imprime el rol que está guardado para `login`.

## Ejemplo

El programa imprime:

```
admin
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
