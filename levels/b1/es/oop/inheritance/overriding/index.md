---
title: Sobrescribir métodos
translations_gpt:
---

{% include menu.html %}

Una clase hija puede tener su propia versión de un método que hereda. Esto se llama _sobrescribir_. Para un objeto de la clase hija, la llamada al método ejecuta la versión de la hija. La versión del padre no se ejecuta.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` y `Cat` sobrescriben cada uno `speak`. El método `intro` viene de `Animal` sin cambios. Llama a `self.speak`, y esta llamada usa el `speak` que pertenece al objeto real:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Así que el mismo `intro` heredado da resultados distintos, porque cada objeto tiene su propio `speak`. Esta es una de las ideas centrales de la programación orientada a objetos. El código compartido cambia su comportamiento para adaptarse a cada clase de objeto.

{% include nav.html %}
