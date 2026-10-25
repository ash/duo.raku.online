---
title: Bucle de tres sentencias `loop`
---

{% include menu.html %}

La declaración `loop` en Raku es muy parecida a los bucles tradicionales de C y de lenguajes similares. Toma tres declaraciones. La primera da un valor inicial, y la segunda es la prueba. La tercera cambia la variable del bucle. El cuerpo del bucle se ejecuta una y otra vez mientras la prueba sea `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "El valor actual del contador es $c.";
}
```

Aquí, `++` es un operador postfijo, lo que significa que va después de su argumento. Suma 1 al argumento. Hay más operadores en la segunda parte del curso.

El programa ejecuta el cuerpo del bucle cinco veces.

```console
$ raku t.raku
El valor actual del contador es 0.
El valor actual del contador es 1.
El valor actual del contador es 2.
El valor actual del contador es 3.
El valor actual del contador es 4.
```

Algunas de las declaraciones del encabezado de `loop`, o incluso todas, son opcionales. Por ejemplo, aquí está el mismo programa:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "El valor actual del contador es $c.";
    $c++;
}
```

## * * *

Los programadores de Raku probablemente usan `loop` menos que cualquier otro bucle. Puedes encontrarlo, por ejemplo, en código que una herramienta convirtió de C a Raku. Pero Raku tiene bucles más cómodos, como `for`. Lo veremos muy pronto.

{% include nav.html %}
