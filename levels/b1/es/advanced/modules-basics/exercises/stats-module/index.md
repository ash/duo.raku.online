---
title: Usar un módulo de estadísticas
translations_gpt:
---

{% include menu.html %}

## Problema

Tienes un módulo `Stats.rakumod` que exporta dos subrutinas, `total` y `mean`. La subrutina `mean` se construye sobre `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Escribe un programa separado que use este módulo. Para la lista `10, 20, 30, 40`, debe imprimir tanto el total como la media.

## Ejemplo

Si lo ejecutas con el módulo en la ruta de búsqueda, el programa imprime:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
