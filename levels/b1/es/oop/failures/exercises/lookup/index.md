---
title: Búsqueda o no encontrado
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe una subrutina `lookup`. Devuelve `100` cuando su argumento es `'a'`. En caso contrario, llama a `fail` con el mensaje `no such key`.

Llama a `lookup('z')` e imprime su resultado si está definido. Si no lo está, imprime `not found`. En una segunda línea, imprime el motivo del fallo, tomado del propio `Failure`: `reason: <mensaje>`.

## Ejemplo

El programa imprime:

```
not found
reason: no such key
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
