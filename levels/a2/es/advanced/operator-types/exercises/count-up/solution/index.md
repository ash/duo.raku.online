---
title: 'Solution: Contar hacia arriba'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Puedes encontrar el código fuente en el archivo [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Salida

```
9
10
```

## Comentarios

1. `++` es un operador postfijo. Va después de su operando. En una expresión, `$n++` primero da el valor *antiguo*, `9`. Esto es lo que imprime `say`. Solo después, `++` suma 1 a la variable.

1. La segunda línea muestra que `$n` ahora es `10`. La forma prefija `++$n` funciona de otra manera. Primero suma 1, y luego devuelve `10`.

{% include nav.html %}
