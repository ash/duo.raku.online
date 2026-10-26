---
title: 'Solución: Nombre el tipo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `WHAT` devuelve el objeto de tipo. Raku lo muestra entre paréntesis: `(Cat)`. Así que `$felix` es un `Cat`.

1. `===` comprueba si dos objetos de tipo son el mismo. `$felix.WHAT === Cat.WHAT` da `True`. Felix de verdad es un `Cat`. Pero `$felix.WHAT === Dog.WHAT` da `False`. Un `Cat` y un `Dog` son tipos distintos. Así que sus objetos de tipo no son el mismo.

{% include nav.html %}
