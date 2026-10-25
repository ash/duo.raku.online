---
title: Atención al espacio
---

{% include menu.html %}

En Raku, usar funciones es casi siempre fácil y no causa problemas. Pero debemos advertirte sobre una cosa.

## TL;DR

No pongas un espacio entre el nombre de la función y los paréntesis con sus argumentos. Pero sí usa un espacio después de `for` y `if`.

## Historia larga

Tomemos una función simple:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Primero, nota que no hay espacio después del nombre de la función. El paréntesis de apertura con los parámetros va justo después del nombre. Algunos estilos de código en otros lenguajes pueden pedir un espacio allí. Raku lo acepta, pero no es una buena práctica:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Cuando llamas a la función, la falta de espacio es importante. Si llamas a la función sin paréntesis, debe haber un espacio después de su nombre:

```raku
f 5, 6;
```

Pero si usas paréntesis, no puede haber un espacio antes de ellos. Esta llamada es correcta:

```raku
f(5, 6);
```

Y esta llamada es incorrecta:

```raku
f (5, 6);
```

Dicho código causa una excepción:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Raku ve la llamada con un espacio, `f (5, 6)`, de otra forma. Piensa que quieres pasar un solo argumento, `(5, 6)`, a la función. Es fácil comprobar el tipo de este argumento. Solo cambia la función para que tome un solo argumento:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Así que, cuando llamas a `f (5, 6)`, pasas una [lista](/es/essentials/positionals/lists) a la función. La lista se pasa como un solo elemento.

## Cuando se necesita espacio

En algunos casos, sí necesitas un espacio. Esto pasa cuando usas paréntesis con una palabra clave como `if`, `for` o `loop`. El siguiente código es incorrecto:

```raku
if(True != False) {
    say 'OK';
}
```

El mensaje de error explica el problema:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Con `if`, no necesitas paréntesis para nada. Así que, si no los usas, el problema no puede aparecer. Pero en algunos casos los necesitas, por ejemplo, con `loop`. Entonces el espacio es obligatorio:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

En este código pasa lo mismo: el compilador toma `loop(...)` como una llamada a función. Agrega un espacio para arreglar el problema. O, todavía mejor, reescribe esta parte del código con `for`.

## Conclusión

En resumen, para evitar estos problemas, sigue dos reglas. No pongas un espacio entre el nombre de la función y los paréntesis con sus argumentos. Además, intenta evitar los paréntesis en otras partes del lenguaje, como el control de flujo.

{% include nav.html %}
