---
title: Argumentos nominales slurpy
---

{% include menu.html %}

## Problema

Escribe una subrutina `describe`. Su primer parámetro es un nombre. Este nombre es posicional y obligatorio. Después, un hash slurpy `*%opts` recoge cualquier número de argumentos nombrados. La subrutina devuelve una cadena así: `name: key=value, key=value, ...`. La cadena muestra cada opción. Las claves van en orden alfabético.

Llámala así: `describe('Anna', colour => 'red', size => 5)`. Imprime el resultado.

## Ejemplo

El programa imprime:

```
Anna: colour=red, size=5
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
