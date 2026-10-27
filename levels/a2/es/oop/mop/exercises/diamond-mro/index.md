---
title: Un rombo de clases
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una clase `A`. Después crea `B` y `C`. Las dos heredan de `A`. Al final, crea `D`. Hereda tanto de `B` como de `C`. Imprime el orden de resolución de métodos de `D`. Imprímelo como una lista de nombres de tipo. Raku busca un método en este orden.

## Ejemplo

El programa imprime:

```
(D B C A Any Mu)
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
