---
title: 'Solución: Una etiqueta modificable'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Puedes encontrar el código fuente en el archivo [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Salida

```
draft (revised)
```

## Comentarios

1. El rasgo `is rw` cambia el accesor. Ahora devuelve un contenedor en el que puedes escribir. Así el accesor puede estar a la izquierda de una asignación.

1. Puedes escribir en el contenedor. Así que el operador `~=` también funciona con él. Este operador une cadenas y asigna en un solo paso. `$l.text ~= ' (revised)'` lee el texto actual. Añade la parte nueva al final. Después guarda de nuevo el resultado. Todo esto pasa por el mismo accesor.

{% include nav.html %}
