---
title: 'Solución: Un contador'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Puedes encontrar el código fuente en el archivo [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Salida

```
0
5
```

## Comentarios

1. El atributo tiene `is rw`. Así su accesor devuelve un contenedor en el que puedes escribir. `= 0` da al atributo un valor inicial. El primer `say` comprueba un contador nuevo. De verdad empieza en el valor por defecto, `0`.

1. Puedes escribir en el accesor. Así que `++` funciona como esperas. Suma 1 al contador.

{% include nav.html %}
