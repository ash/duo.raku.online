---
title: 'Solution: Un map con dos puntos'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Encuentra el programa en el archivo [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Salida

```
(12 14 16 18 20)
```

## Comentarios

1. La forma con dos puntos solo es posible para `grep`, la última llamada de la cadena. Los dos puntos hacen de `* > 10` su argumento, exactamente como `grep(* > 10)`. Todavía necesitamos imprimir el resultado. Así que ahora `say` se usa como función, no como método.

1. La llamada a `map` debe mantener sus paréntesis. Imagina que escribes `.map: * * 2` en su lugar. Entonces los dos puntos tomarían también `.grep(* > 10)` como argumento de `map`. Así que la cadena se rompería.

{% include nav.html %}
