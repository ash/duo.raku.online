---
title: Clasificar el tamaño
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe tres multi-subrutinas con el nombre `size`. Cada una de ellas toma un `Int`. Devuelven `'small'`, `'medium'` o `'large'`. Mira solo el *tamaño* del número e ignora su signo. Usa el valor absoluto del número. Si es menor que `10`, el número es pequeño. Si es menor que `100`, el número es mediano. Cualquier otro número es grande. Usa una cláusula `where` en los dos primeros candidatos. El tercer candidato recibe todos los demás números.

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
