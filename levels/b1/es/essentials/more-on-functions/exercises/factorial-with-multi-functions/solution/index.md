---
title: 'Solution: Factorial con multi-funciones'
---

{% include menu.html %}

Este ejercicio trata otra vez de factoriales. De hecho, esta tarea nos permite mostrar más características de Raku.

Puedes calcular un factorial empezando desde el número dado y bajando. En ese caso, debes parar cuando el número llega a 1. Las multi-funciones te permiten hacer esto. Mueve el caso `$n == 1` a una multi-función separada.

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

Nota que el programa convierte el argumento de entrada en un entero: `@*ARGS[0].Int`. Esto evita un bucle infinito cuando el número de entrada es `1`. Sin la conversión, la función `factorial` recibe un valor de tipo [`IntStr`](/es/essentials/typed-variables/allomorphs). La primera variante de la multi-función no puede capturar esa llamada. Pero en la llamada recursiva `factorial(2 - 1)`, el argumento es un entero. Así que Raku puede llamar a la primera variante.

{% include nav.html %}
