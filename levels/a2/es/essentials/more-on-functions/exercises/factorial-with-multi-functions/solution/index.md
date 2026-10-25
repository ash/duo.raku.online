---
title: 'Solution: Factorial con multi-funciones'
---

{% include menu.html %}

Este ejercicio trata otra vez de factoriales. Con esta tarea, podemos mostrar más características de Raku.

Para calcular un factorial, podemos empezar en el número dado. Después bajamos. Debemos parar cuando el número es 1. Las multi-funciones pueden hacer esto. Pon el caso `$n == 1` en su propia multi-función.

## Código

Aquí está la solución:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Encuentra el programa en el archivo [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Salida

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Comentario

Nota que el programa convierte el argumento de entrada en un entero. Lo hace con `@*ARGS[0].Int`. Sin esto, la entrada `1` da un bucle infinito. Veamos por qué. En ese caso, la función `factorial` recibe un valor [`IntStr`](/es/essentials/typed-variables/allomorphs). Así que Raku no puede usar la primera variante de la multi-función. La llamada recursiva `factorial(2 - 1)` es diferente. Allí, el argumento es un entero. Así que Raku puede llamar a la primera variante.

{% include nav.html %}
