---
title: 'Solution: Imprimir la advertencia'
---

{% include menu.html %}

## Código

Aquí está la solución:

```raku
my $age = prompt '¿Cuál es tu edad? ';

if $age < 0 {
    note '¡Ingresaste un número negativo!';
}
else {
    say "Tu edad es $age";
}
```

🦋 Encuentra el programa en el archivo [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Salida

Aquí tienes dos casos posibles:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
¿Cuál es tu edad? 20
Tu edad es 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
¿Cuál es tu edad? -1
¡Ingresaste un número negativo!
```

Para comprobar que el mensaje de error va a `STDERR`, redirige la salida. El mensaje que pide tu edad no aparecerá, pero aún puedes escribir un número. La advertencia sigue visible.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
¡Ingresaste un número negativo!
```

{% include nav.html %}
