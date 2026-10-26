---
title: 'Solution: Leer la constante'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

El programa, `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Salida

```console
$ raku -I. read-pi.raku
3.14
```

## Comentarios

1. `need Circle` carga el módulo. Pero no importa ningún nombre. Así que Raku no conoce `$pi` solo, sin el nombre del módulo.

1. Llegas a la variable `our` a través del nombre del módulo. La escribes como `$Circle::pi`.

{% include nav.html %}
