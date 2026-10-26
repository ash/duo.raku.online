---
title: Atributos
translations_gpt:
---

{% include menu.html %}

Una clase vacía no es muy útil. Para que un objeto guarde sus propios datos, da a la clase unos _atributos_. Declaras un atributo dentro de la clase con la palabra clave `has`:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Cada objeto de la clase tiene su propia copia de estos atributos. Les das sus valores cuando creas el objeto. Para ello, pásalos a `new` como argumentos con nombre:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

El `$.` de `has $.name` hace dos cosas a la vez. Declara un atributo y crea un método con el mismo nombre. Este método se llama _accesor_ y devuelve el valor del atributo:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Objetos distintos guardan sus propios valores, que no dependen unos de otros:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Los temas siguientes muestran cómo hacer que los atributos se puedan cambiar. También muestran cómo dar valores por defecto a los atributos. Además, hay una manera de declarar atributos _privados_, que quedan ocultos desde fuera. Volveremos a ellos después de presentar los métodos.

{% include nav.html %}
