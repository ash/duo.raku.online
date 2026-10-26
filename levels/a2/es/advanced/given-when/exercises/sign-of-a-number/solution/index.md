---
title: 'Solution: Par, impar o cero'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Encuentra el programa en el archivo [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Salida

```
even
```

## Comentarios

1. `when 0` coincide solo con un valor, el cero. Va primero. El cero también es par, pero queremos mostrarlo aparte.

1. `when $_ %% 2` es una condición. Aquí, `$_` es el tópico de `given`. El operador `%%` comprueba si se divide entre dos sin resto. El valor `12` no es cero. Pero se divide entre dos. Así que el programa imprime `even`.

1. `default` es para todos los otros números. No son cero y no son pares. Así que son los números impares.

{% include nav.html %}
