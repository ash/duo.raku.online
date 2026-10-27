---
title: Herencia
translations_gpt:
---

{% include menu.html %}

La _herencia_ permite construir una clase sobre otra clase. Para esto, escribe `is` después del nombre de la clase nueva. Después escribe el nombre de la otra clase. La clase nueva hereda de la otra clase. Recibe todos sus atributos y métodos. La otra clase es la clase _padre_, o la clase _base_.

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

`Dog is Animal` significa que un `Dog` es una clase de `Animal`. No escribimos nada nuevo en `Dog`. Pero `Dog` ya tiene el atributo `name` de `Animal`. También tiene el método `speak` de `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

Un objeto `Dog` también es un `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Con el smart-match `~~`, puedes comparar un objeto con un tipo. El resultado es verdadero cuando el objeto tiene este tipo. También es verdadero cuando el objeto hereda de este tipo. El tema siguiente trata de una clase hija. Una clase hija hereda de una clase padre. Puede sustituir un método de su padre por su propia versión.

{% include nav.html %}
