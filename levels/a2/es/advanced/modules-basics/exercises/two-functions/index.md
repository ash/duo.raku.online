---
title: Dos funciones en un módulo
translations_gpt:
---

{% include menu.html %}

## Problema

Crea un módulo con el nombre `Calc` en el archivo `Calc.rakumod`. El módulo exporta dos subrutinas: `add` y `mul`. Cada una recibe dos argumentos. `add` devuelve su suma. `mul` devuelve su producto.

Luego escribe un programa separado. El programa usa el módulo e imprime `add(3, 4)` y `mul(3, 4)`. Cada resultado va en su propia línea.

## Ejemplo

Ejecuta el programa con el módulo en la ruta de búsqueda. El programa imprime:

```console
$ raku -I. calc.raku
7
12
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
