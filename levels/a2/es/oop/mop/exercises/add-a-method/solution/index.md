---
title: 'Solución: Añada un método'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `.^add_method` añade un método nuevo al metaobjeto de la clase. Lo hace mientras el programa se ejecuta. Das el método nuevo como un `method { … }` anónimo. Esto significa que el método no tiene nombre propio.

1. El método nuevo es un método real de la clase. Así que dentro de él, `$.name` obtiene el atributo `name` del objeto. Un método en el cuerpo de la clase hace lo mismo. Después de la llamada a `.^add_method`, puedes llamar a `.speak` sobre cada `Dog`.

{% include nav.html %}
