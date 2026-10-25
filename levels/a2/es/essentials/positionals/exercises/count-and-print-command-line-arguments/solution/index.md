---
title: 'Solution: Contar e imprimir argumentos de línea de comandos'
---

{% include menu.html %}

Un bucle `for` es bueno para este programa.

## Código

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Encuentra el programa en el archivo [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Salida

Ejecuta el programa. Comprueba que imprime los argumentos y los números de línea:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discusión

Este programa usa algunos trucos útiles. Primero, el bucle `for` recorre un [rango hecho con `^`](/es/essentials/ranges/excluding-endpoints). El rango empieza en 0. Llega hasta el valor de `@*ARGS`. Pero este último valor no está en el rango. Aquí, `@*ARGS` [da](/es/essentials/positionals/arrays#size) la longitud del array.

El primer elemento de un array tiene el índice `0`. Pero la tarea quiere números de línea desde `1`. Así que sumamos 1 al índice. El programa lo hace [en un bloque de código](/es/essentials/strings/code-interpolation) dentro de una cadena: `"{$n + 1} ..."`.

{% include nav.html %}
