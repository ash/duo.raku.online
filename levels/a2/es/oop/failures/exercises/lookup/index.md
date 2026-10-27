---
title: Búsqueda o no encontrado
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe una subrutina `lookup`. Si su argumento es `'a'`, devuelve `100`. Si no, llama a `fail` con el mensaje `no such key`.

Llama a `lookup('z')`. Si el resultado está definido, imprímelo. Si no, imprime `not found`. Después imprime una segunda línea con el motivo del fallo. Toma el motivo del propio `Failure`. La línea es así: `reason: <mensaje>`.

## Ejemplo

El programa imprime:

```
not found
reason: no such key
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
