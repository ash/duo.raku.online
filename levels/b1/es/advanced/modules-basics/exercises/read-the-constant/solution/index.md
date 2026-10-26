---
title: 'Solution: Leer la constante'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `need Circle` carga el módulo, pero no importa ningún nombre. Así que Raku no reconocería `$pi` por sí solo.

1. El programa accede a la variable `our` a través del nombre del módulo, como `$Circle::pi`.

{% include nav.html %}
