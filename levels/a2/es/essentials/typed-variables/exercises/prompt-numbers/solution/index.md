---
title: 'Solution: Examinar el resultado de `prompt` — Números'
---

{% include menu.html %}

## Código

Aquí está el programa completo. Resuelve el problema. Imprime el valor que escribes y su tipo.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Puedes encontrar el código fuente en el archivo [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Ejecuciones de prueba

Ejecuta el programa varias veces. Escribe números de diferentes tipos.

### Enteros

Primero, probemos con enteros. Prueba enteros positivos y negativos.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

El tipo del resultado es `IntStr`. Raku tiene este tipo incorporado. Tiene las características de `Int` y de `Str`.

### Números racionales

Ahora probemos con un número racional. Recuerda: en Raku, un número con punto decimal es un `Rat`. No es un número de punto flotante.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Esta vez, el dato en `$n` tiene el tipo `RatStr`. Es un tipo combinado. Es a la vez `Rat` y `Str`.

### Números de punto flotante

Por último, prueba un número en notación científica, con la letra `e`. Ahora probablemente puedes adivinar la salida.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Sí, el valor nuevo tiene el tipo `NumStr`.

{% include nav.html %}
