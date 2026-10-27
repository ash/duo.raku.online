---
title: Subrutinas y métodos
translations_gpt:
---

{% include menu.html %}

Ya tienes dos formas de organizar un comportamiento: una _subrutina_ y un _método_. Se parecen, pero los usas de formas distintas.

Una subrutina es independiente. La llamas por su nombre, y le pasas como argumentos todo lo que necesita:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Un método pertenece a una clase. Lo llamas sobre un objeto con un punto. Puede usar los datos del propio objeto a través de `self` y de los accesores de los atributos. Así que no necesitas pasarle esos datos:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Los dos calculan el mismo número. La diferencia está en de dónde vienen los datos. La subrutina recibe el radio como argumento. El método lo lee del objeto sobre el que se ha llamado.

Aquí tienes una regla simple. Usa una subrutina para una operación aparte que solo convierte sus argumentos en un resultado. Usa un método cuando el comportamiento pertenece a un objeto y usa sus datos. Para rutinas generales que pertenecen a la clase entera, usa métodos de clase.

{% include nav.html %}
