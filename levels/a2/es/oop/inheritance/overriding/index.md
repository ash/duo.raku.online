---
title: Sobrescribir métodos
translations_gpt:
---

{% include menu.html %}

Una clase hija hereda métodos de su clase padre. Pero también puede tener su propia versión de un método así. Esto se llama _sobrescribir_. Llamas al método sobre un objeto de la clase hija. Entonces se ejecuta la versión de la hija. La versión del padre no se ejecuta.

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

`Dog` y `Cat` sobrescriben los dos `speak`. Heredan el método `intro` de `Animal` y no lo cambian. Este método llama a `self.speak`. Esta llamada usa el `speak` del propio objeto:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Así que el mismo `intro` heredado da resultados distintos. Esto pasa porque cada objeto tiene su propio `speak`. Esta es una de las ideas principales de la programación orientada a objetos. El código es compartido. Pero funciona de otra manera para cada clase de objeto.

{% include nav.html %}
