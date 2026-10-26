---
title: 'Solución: Nombre el tipo'
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

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Puedes encontrar el código fuente en el archivo [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Salida

```
(Cat)
True
False
```

## Comentarios

1. `WHAT` devuelve el objeto de tipo, que se muestra entre paréntesis como `(Cat)`. Así que `$felix` es un `Cat`.

1. `===` comprueba si dos objetos de tipo son idénticos. `$felix.WHAT === Cat.WHAT` da `True`, porque Felix de verdad es un `Cat`. Pero `$felix.WHAT === Dog.WHAT` da `False`. `Cat` y `Dog` son tipos distintos, así que sus objetos de tipo no son el mismo.

{% include nav.html %}
