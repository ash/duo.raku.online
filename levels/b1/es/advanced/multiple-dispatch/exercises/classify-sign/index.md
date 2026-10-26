---
title: Clasificar el tamaño
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe tres multi-subrutinas llamadas `size`. Cada una toma un `Int` y devuelve `'small'`, `'medium'` o `'large'`. Decide por el *tamaño* del número e ignora su signo. Si el valor absoluto es menor que `10`, el número es pequeño. Si es menor que `100`, es mediano, y cualquier otro es grande. Usa una cláusula `where` en los dos primeros candidatos. Deja que el tercero recoja todo lo demás.

Imprime el resultado de `size(7)`, `size(30)` y `size(-250)`.

## Ejemplo

El programa imprime:

```
small
medium
large
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
