---
title: Métodos
translations_gpt:
---

{% include menu.html %}

Los atributos dan a un objeto sus datos. Con los _métodos_, un objeto también puede hacer cosas. Un método es una subrutina dentro de una clase. Llamas a un método sobre un objeto. Para crear un método, escribe la palabra clave `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

Para llamar a un método sobre un objeto, usa un punto. Es igual que con un accesor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Dentro de un método, `self` es el objeto. Es el objeto sobre el que llamaste al método. Llegas a los atributos con sus accesores. Los escribes como `$.name`, `$.age` y otros. También puedes usarlos dentro de una cadena entre comillas dobles:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

Los temas siguientes tratan tres cosas. La primera son los atributos privados. Para ellos necesitas métodos, y ahora ya tienes métodos. La segunda son los métodos con parámetros. La tercera son los métodos que llaman a otros métodos.

{% include nav.html %}
