---
title: 'Solución: Encuentre un método'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Puedes encontrar el código fuente en el archivo [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Salida

```
True
```

## Comentarios

1. `.^find_method` devuelve el método si existe. Si no existe, devuelve un valor no definido. `so` lo convierte en un booleano simple, `True` o `False`.

1. `Dog` no tiene métodos propios. Pero el resultado es `True`. `find_method` busca en toda la cadena de herencia. Encuentra `speak` más arriba, en `Animal`. Una llamada real a un método sobre un `Dog` funciona igual. También encuentra así el método heredado.

{% include nav.html %}
