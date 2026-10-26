---
title: Pereza y ansiedad
translations_gpt:
---

{% include menu.html %}

Raku calcula algunas listas solo cuando necesita sus elementos. Estas listas son _perezosas_ (lazy). Con los prefijos `lazy` y `eager`, puedes controlar esto tú mismo.

El prefijo `eager` hace que Raku produzca una lista **toda de una vez**, ahora mismo:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

El `map` también produce los valores sin `eager`. Pero `eager` se asegura de que Raku los calcule todos de una vez. No espera al momento en que los necesitas.

El prefijo `lazy` hace lo contrario. Marca una lista como perezosa. Entonces Raku produce cada elemento solo cuando el código lo pide. Así que una lista puede, en teoría, no tener final:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

El método `.is-lazy` muestra que la lista es perezosa. Así que no intenta calcular primero todos sus elementos. Y estos elementos no tienen final.

Pero en este ejemplo, Raku hace la lista perezosa de todos modos. Un rango sin final, como `1 .. Inf`, ya es perezoso. Así que `say (1 .. Inf).is-lazy` imprime `True` sin el prefijo. Aquí, `lazy` no cambia nada. Solo muestra claramente lo que quieres. El prefijo es útil de verdad en otro caso. A veces Raku calcula una lista de forma ansiosa, toda de una vez. Con el prefijo, puedes hacer perezosa esa lista.

Casi siempre, Raku elige bien por sí solo. Los rangos y las secuencias son perezosos. Una asignación normal a un array es ansiosa. Usa estos prefijos si quieres otra elección. Usa `eager` para hacer ahora un cálculo lento. Usa `lazy` para dejar para después un cálculo muy grande o sin final.

{% include nav.html %}
