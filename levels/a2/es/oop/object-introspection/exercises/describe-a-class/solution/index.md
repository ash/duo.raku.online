---
title: 'Solución: Describa una clase'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `.^name` devuelve el nombre de la clase, `Dog`.

1. `.^mro` devuelve la cadena de herencia. `.elems` cuenta los tipos que hay en ella. En la cadena hay cuatro tipos. Son `Dog`, su padre `Animal`, y después `Any` y `Mu`. Toda clase tiene `Any` y `Mu` en su cadena. Así que el número es `4`.

1. `.^mro.map(*.^name)` convierte la cadena en una lista de nombres de tipo: `(Dog Animal Any Mu)`. El operador `∈` comprueba si un elemento está en un conjunto. Aquí, comprueba si `Cat` es uno de estos nombres. `Dog` no hereda de ningún `Cat`. Así que la respuesta es `False`.

{% include nav.html %}
