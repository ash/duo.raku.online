---
title: Pereza y ansiedad
translations_gpt:
---

{% include menu.html %}

Algunas listas en Raku se calculan solo cuando se necesitan sus elementos. Estas listas son _perezosas_ (lazy). Los prefijos `lazy` y `eager` te dejan controlar esto de forma directa.

El prefijo `eager` hace que Raku produzca una lista **toda de una vez**, enseguida:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Sin `eager`, el `map` también produciría los valores. Pero `eager` se asegura de que todos se calculen enseguida, y no más tarde cuando se pidan.

El prefijo `lazy` hace lo contrario. Marca una lista como perezosa. Entonces sus elementos se producen solo cuando el código los pide. Esto es lo que permite que una lista sea infinita, al menos en teoría:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

El método `.is-lazy` lo confirma. La lista no intentará calcular por adelantado todos sus elementos, que no tienen fin.

Sin embargo, en este ejemplo Raku haría la lista perezosa de todos modos. Un rango sin final, como `1 .. Inf`, ya es perezoso. Así que `say (1 .. Inf).is-lazy` imprime `True` sin el prefijo. Escribir `lazy` aquí no cambia nada. Solo muestra tu intención con claridad. El prefijo es útil de verdad con una lista que Raku, si no, calcularía de forma ansiosa. Con `lazy`, puedes hacer perezosa esa lista.

La mayor parte del tiempo, Raku elige bien por sí solo. Los rangos y las secuencias son perezosos, y la asignación normal a un array es ansiosa. Usa estos prefijos cuando necesites cambiar esa elección. Usa `eager` para que un cálculo costoso ocurra ahora. Usa `lazy` para retrasar un cálculo que podría ser grande o no tener fin.

{% include nav.html %}
