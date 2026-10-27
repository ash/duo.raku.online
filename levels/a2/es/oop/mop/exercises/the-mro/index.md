---
title: El orden de resolución de métodos
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una cadena de tres clases. La primera es `A`. Después `B` hereda de `A`. Después `C` hereda de `B`. Imprime el orden de resolución de métodos de `C`. Imprímelo como una lista de nombres de tipo. Raku busca un método en este orden.

## Ejemplo

El programa imprime:

```
(C B A Any Mu)
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
