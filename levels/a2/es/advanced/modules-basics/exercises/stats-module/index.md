---
title: Usar un módulo de estadísticas
translations_gpt:
---

{% include menu.html %}

## Problema

Aquí tienes un módulo, `Stats.rakumod`. Exporta dos subrutinas: `total` y `mean`. La subrutina `mean` usa `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Escribe un programa separado. El programa usa este módulo. Toma la lista `10, 20, 30, 40`. Imprime el total y la media, o promedio, de esta lista.

## Ejemplo

Ejecuta el programa con el módulo en la ruta de búsqueda. El programa imprime:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
