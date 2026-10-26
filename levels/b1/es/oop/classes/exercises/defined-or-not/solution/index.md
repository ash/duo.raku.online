---
title: 'Solución: Definido o no'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Puedes encontrar el código fuente en el archivo [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Salida

```
False
False
True
True
```

## Comentarios

1. El bucle recorre una mezcla de valores. Dos son objetos de tipo, `Cat` y `Dog`, y dos son instancias, `Cat.new` y `Dog.new`.

1. Los dos objetos de tipo no están definidos, así que `defined` devuelve `False` para ellos. Las dos instancias están definidas, así que devuelve `True`. Por tanto, lo que importa es si un valor es un objeto de tipo o una instancia real. La clase del valor no importa.

{% include nav.html %}
