---
title: 'Solution: Contar e imprimir argumentos de línea de comandos'
---

{% include menu.html %}

En este programa, un bucle `for` es una buena elección.

## Código

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Encuentra el programa en el archivo [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Salida

Ejecuta el programa y comprueba que imprime los argumentos con números de línea:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discusión

Este programa usa algunos trucos prácticos. Primero, el bucle `for` recorre el [rango hecho con `^`](/es/essentials/ranges/excluding-endpoints). Así que el rango empieza en 0. Llega hasta el valor de `@*ARGS`, pero sin incluirlo. En este contexto, `@*ARGS` [devuelve](/es/essentials/positionals/arrays#size) la longitud del array.

El primer elemento de un array tiene índice `0`. Pero la tarea quiere que contemos las líneas desde `1`. Este pequeño cambio se calcula [dentro de un bloque de código](/es/essentials/strings/code-interpolation) en una cadena: `"{$n + 1} ..."`.

{% include nav.html %}
