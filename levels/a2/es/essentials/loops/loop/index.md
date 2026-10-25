---
title: Bucle de tres sentencias `loop`
---

{% include menu.html %}

Raku tiene una declaración `loop`. Funciona como los bucles de C y de lenguajes parecidos. Tiene tres declaraciones. La primera da el valor inicial a la variable del bucle. La segunda es una prueba. La tercera cambia la variable del bucle. El bucle se ejecuta mientras la prueba es `True`.

```raku
loop (my $c = 0; $c < 5; $c++) {
    say "El valor actual del contador es $c.";
}
```

Aquí, `++` es un operador. Lo escribes después de una variable. Suma 1 a la variable. La segunda parte del curso tiene más operadores.

El cuerpo del bucle se ejecuta cinco veces.

```console
$ raku t.raku
El valor actual del contador es 0.
El valor actual del contador es 1.
El valor actual del contador es 2.
El valor actual del contador es 3.
El valor actual del contador es 4.
```

Puedes quitar algunas de las tres declaraciones de `loop`. Incluso puedes quitarlas todas. Por ejemplo, aquí está el mismo programa:

```raku
my $c = 0;
loop (; $c < 5;) {
    say "El valor actual del contador es $c.";
    $c++;
}
```

## * * *

En Raku, la gente no usa `loop` muy a menudo. A veces una herramienta convierte código de C en código de Raku. Puedes ver `loop` en ese código. Raku tiene bucles más fáciles, como `for`. Vamos a ver `for` muy pronto.

{% include nav.html %}
