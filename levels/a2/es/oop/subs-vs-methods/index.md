---
title: Subrutinas y métodos
translations_gpt:
---

{% include menu.html %}

Ahora conoces dos formas de juntar algunas acciones. Una es la _subrutina_. La otra es el _método_. Se parecen. Pero los usas de formas distintas.

Una subrutina es independiente. No pertenece a nada. La llamas por su nombre. Le pasas como argumentos todo lo que necesita:

```raku
sub area-of($radius) {
    π * $radius * $radius;
}

say area-of(2); # 12.566370614359172
```

Un método pertenece a una clase. Es como una función dentro de la clase. Llamas a un método sobre un objeto, con un punto. Un objeto es un valor de la clase. El método puede usar los datos de su objeto. Para esto, tiene `self` y los accesores de los atributos. Así que no le pasas estos datos:

```raku
class Circle {
    has $.radius;

    method area {
        π * $.radius * $.radius;
    }
}

say Circle.new(radius => 2).area; # 12.566370614359172
```

Los dos dan el mismo número. La diferencia es de dónde vienen los datos. La subrutina recibe el radio como argumento. El método lee el radio de su objeto. Es el objeto sobre el que lo llamas.

Aquí tienes una regla simple. ¿El código es independiente y solo trabaja con sus argumentos? Entonces usa una subrutina. ¿El código pertenece a un objeto y trabaja con sus datos? Entonces usa un método. ¿El código pertenece a una clase, pero no a un solo objeto? Entonces usa métodos de clase.

{% include nav.html %}
