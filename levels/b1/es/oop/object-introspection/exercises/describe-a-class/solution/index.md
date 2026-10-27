---
title: 'Solución: Describa una clase'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Puedes encontrar el código fuente en el archivo [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Salida

```
Dog
4
False
```

## Comentarios

1. `.^name` devuelve el nombre de la clase misma, `Dog`.

1. `.^mro` devuelve la cadena de herencia, y `.elems` la cuenta. La cadena tiene cuatro tipos: `Dog`, su padre `Animal`, y `Any` y `Mu`, que toda clase tiene. Así que el recuento es `4`.

1. `.^mro.map(*.^name)` convierte esta cadena en una lista de nombres de tipo, `(Dog Animal Any Mu)`. El operador `∈` comprueba la pertenencia a un conjunto. Aquí, comprueba si `Cat` es uno de ellos. `Dog` no hereda de ningún `Cat`, así que la respuesta es `False`.

{% include nav.html %}
