---
title: Herencia
translations_gpt:
---

{% include menu.html %}

La _herencia_ permite que una clase se construya sobre otra. Después del nombre de la clase nueva, escribes `is` y el nombre de otra clase. Entonces la clase nueva hereda todos los atributos y métodos de esa clase. Esa clase se llama su clase _padre_ (o _base_).

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
}

class Dog is Animal {
}
```

`Dog is Animal` significa que un `Dog` es una clase de `Animal`. La clase `Dog` no tiene código propio. Pero ya tiene el atributo `name` y el método `speak` de `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Un objeto `Dog` también cuenta como `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

El smart-match `~~` contra un tipo es verdadero si el objeto tiene ese tipo. También es verdadero si el objeto hereda de ese tipo. En el tema siguiente, una clase hija sustituye un método heredado por su propia versión.

{% include nav.html %}
