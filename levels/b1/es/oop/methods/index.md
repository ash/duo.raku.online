---
title: Métodos
translations_gpt:
---

{% include menu.html %}

Los atributos dan a un objeto sus datos, y los _métodos_ le dan comportamiento. Un método es una subrutina que pertenece a una clase. Lo llamas sobre un objeto. Declaras un método con la palabra clave `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Para llamar a un método sobre un objeto, usa un punto, igual que con un accesor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Dentro de un método, `self` es el objeto sobre el que se llamó al método. Llegas a los atributos a través de sus accesores. Los escribes como `$.name`, `$.age` y demás. También funcionan dentro de cadenas entre comillas dobles, donde Raku inserta sus valores:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Los temas siguientes tratan los atributos privados, porque ahora tenemos métodos para usarlos. Después tratan los métodos que reciben parámetros y los métodos que llaman a otros métodos.

{% include nav.html %}
