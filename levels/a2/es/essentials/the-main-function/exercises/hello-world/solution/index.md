---
title: 'Solution: ¡Hola, Mundo!'
---

{% include menu.html %}

Ya estamos muy avanzados en el curso. Pero tenemos que volver a este programa. ¿Por qué? Acabamos de aprender una nueva forma de escribir programas en Raku.

## Código 1

```raku
sub MAIN() {
    say '¡Hola, Mundo!';
}
```

🦋 Encuentra el programa en el archivo [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Código 2

```raku
unit sub MAIN;
say '¡Hola, Mundo!';
```

🦋 Encuentra el programa en el archivo [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Ejemplo

Ejecuta uno de los dos programas:

```console
$ raku exercises/the-main-function/hello-world.raku
¡Hola, Mundo!

$ raku exercises/the-main-function/hello-world-unit.raku
¡Hola, Mundo!
```

{% include nav.html %}
