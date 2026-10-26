---
title: 'Solución: Una etiqueta modificable'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El rasgo `is rw` hace que el accesor devuelva un contenedor escribible. Así el accesor puede estar en el lado izquierdo de una asignación.

1. Como el contenedor es escribible, el operador compuesto `~=` también funciona con él. `$l.text ~= ' (revised)'` lee el texto actual, añade el final nuevo y guarda de nuevo el resultado. Todo esto pasa a través del mismo accesor.

{% include nav.html %}
