---
title: Bucle de tres sentencias `loop`
---

{% include menu.html %}

La declaración `loop` en Raku tiene mucho en común con los bucles tradicionales del lenguaje de programación C y sus parientes. Toma tres declaraciones: el inicializador, la prueba y la declaración que cambia la variable del bucle. El cuerpo del bucle se ejecuta una y otra vez mientras la prueba siga siendo `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "El valor actual del contador es $c.";
}
```

Aquí, `++` es un operador postfijo que aumenta su argumento en 1. Veremos más operadores en la segunda parte del curso.

El programa ejecuta el cuerpo del bucle cinco veces.

```console
$ raku t.raku
El valor actual del contador es 0.
El valor actual del contador es 1.
El valor actual del contador es 2.
El valor actual del contador es 3.
El valor actual del contador es 4.
```

Algunas, o incluso todas, las declaraciones del encabezado de `loop` se pueden omitir. Por ejemplo, aquí está el mismo programa:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "El valor actual del contador es $c.";
    $c++;
}
```

## * * *

Los bucles `loop` son probablemente los bucles menos usados en Raku. Puedes encontrarlos, por ejemplo, en código que una herramienta tradujo automáticamente de C a Raku. Pero Raku tiene bucles más cómodos, como `for`, que veremos muy pronto.

{% include nav.html %}
