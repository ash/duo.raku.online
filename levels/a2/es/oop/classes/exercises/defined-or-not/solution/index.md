---
title: 'Solución: Definido o no'
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

1. El bucle recorre dos objetos de tipo, `Cat` y `Dog`. También recorre dos instancias, `Cat.new` y `Dog.new`.

1. Los dos objetos de tipo no están definidos. Así que `defined` devuelve `False` para ellos. Las dos instancias están definidas. Así que `defined` devuelve `True` para ellas. Aquí solo importa una cosa. ¿El valor es un objeto de tipo o una instancia real? La clase del valor no importa.

{% include nav.html %}
