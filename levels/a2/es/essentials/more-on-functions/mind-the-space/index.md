---
title: Atención al espacio
---

{% include menu.html %}

Las funciones en Raku son casi siempre fáciles de usar. Normalmente no causan problemas. Pero ten cuidado con una cosa.

## TL;DR

No escribas un espacio entre el nombre de la función y los paréntesis. Los paréntesis contienen los argumentos. Pero sí pon un espacio después de `for` y `if`.

## Historia larga

Aquí tienes una función simple:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Primero, mira el nombre de la función. El paréntesis de apertura va justo después, sin espacio. Los parámetros están dentro de estos paréntesis. Algunos estilos de código en otros lenguajes necesitan un espacio allí. Raku también lo acepta. Pero no es una buena forma de escribir código:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

En una llamada a función, la falta de espacio es importante. A veces llamas a una función sin paréntesis. Entonces debes poner un espacio después del nombre de la función:

```raku
f 5, 6;
```

Pero con paréntesis, no debe haber un espacio antes de ellos. Esta llamada es correcta:

```raku
f(5, 6);
```

Y esta llamada es incorrecta:

```raku
f (5, 6);
```

Este código causa una excepción:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Mira la llamada con un espacio: `f (5, 6)`. Raku piensa que pasas un solo argumento a la función. Este argumento es `(5, 6)`. Puedes comprobar fácilmente el tipo de este argumento. Cambia la función. La función debe tomar solo un argumento:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Así que la llamada `f (5, 6)` pasa una [lista](/es/essentials/positionals/lists) a la función. Toda la lista es un solo argumento.

## Cuando necesitas un espacio

A veces necesitas un espacio. Esto pasa cuando usas paréntesis después de una palabra clave. Por ejemplo, la palabra clave puede ser `if`, `for` o `loop`. Este código está mal:

```raku
if(True != False) {
    say 'OK';
}
```

El mensaje de error te dice qué está mal:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Con `if`, no necesitas paréntesis para nada. Sin ellos, este problema no puede pasar. Pero a veces necesitas paréntesis, por ejemplo, con `loop`. Entonces debes poner un espacio:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

Lo mismo pasa en este código. El compilador piensa que `loop(...)` es una llamada a función. Agrega un espacio para arreglar el problema. O, mejor, escribe este código con `for`.

## Conclusión

Así que esta es la idea principal. No pongas un espacio entre el nombre de una función y sus paréntesis. Así evitas estos problemas. Además, si puedes, no uses paréntesis en otros lugares. Por ejemplo, no los necesitas con `if` y `for`.

{% include nav.html %}
