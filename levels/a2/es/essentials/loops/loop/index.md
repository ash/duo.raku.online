---
title: Bucle de tres sentencias `loop`
---

{% include menu.html %}

La declaración `loop` en Raku es como los bucles clásicos del lenguaje C y de lenguajes parecidos. Toma tres declaraciones. La primera da el valor inicial. La segunda es la prueba. La tercera cambia la variable del bucle. El cuerpo del bucle se ejecuta una y otra vez mientras la prueba es `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "El valor actual del contador es $c.";
}
```

Aquí, `++` es un operador que va después de una variable. Suma 1 a la variable. Vas a aprender más operadores en la segunda parte del curso.

El programa ejecuta el cuerpo del bucle cinco veces.

```console
$ raku t.raku
El valor actual del contador es 0.
El valor actual del contador es 1.
El valor actual del contador es 2.
El valor actual del contador es 3.
El valor actual del contador es 4.
```

Puedes quitar algunas o incluso todas las declaraciones del encabezado de `loop`. Por ejemplo, aquí está el mismo programa:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "El valor actual del contador es $c.";
    $c++;
}
```

## * * *

En Raku, la gente no usa `loop` muy a menudo. Puedes verlo, por ejemplo, en programas que una herramienta tradujo de C a Raku. Raku tiene bucles más fáciles, como `for`. Vamos a ver `for` muy pronto.

{% include nav.html %}
