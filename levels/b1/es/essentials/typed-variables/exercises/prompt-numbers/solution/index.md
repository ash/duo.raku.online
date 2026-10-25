---
title: 'Solution: Examinar el resultado de `prompt` — Números'
---

{% include menu.html %}

## Código

Aquí está el programa completo. Resuelve el problema e imprime tanto el valor introducido como su tipo.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Puedes encontrar el código fuente en el archivo [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Ejecuciones de prueba

Ejecuta el programa varias veces e ingresa números de diferentes tipos.

### Enteros

Primero, probemos con enteros, tanto positivos como negativos.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

El resultado tiene el tipo `IntStr`. Este tipo incorporado tiene las características tanto de `Int` como de `Str`.

### Números racionales

Ahora probemos con un número racional. Recuerda que en Raku, escribir un número con punto decimal da un número `Rat`. No es un número de punto flotante.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Esta vez, el programa dice que el dato en `$n` tiene el tipo `RatStr`. Es un tipo combinado de `Rat` y `Str`.

### Números de punto flotante

Por último, prueba un número en notación científica. Ahora probablemente ya puedes adivinar la salida.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Como esperábamos, el valor nuevo es del tipo `NumStr`.

{% include nav.html %}
