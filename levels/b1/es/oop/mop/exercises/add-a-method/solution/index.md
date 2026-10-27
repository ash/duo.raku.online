---
title: 'Solución: Añada un método'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Puedes encontrar el código fuente en el archivo [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Salida

```
Rex says woof
```

## Comentarios

1. `.^add_method` añade en tiempo de ejecución un método nuevo al metaobjeto de la clase. Das el método como un `method { … }` anónimo.

1. El método añadido es un método real de la clase. Así que dentro de él, `$.name` llega al atributo `name` del objeto. Un método escrito en el cuerpo de la clase haría lo mismo. Después de la llamada, todo `Dog` responde a `.speak`.

{% include nav.html %}
