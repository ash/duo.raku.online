---
title: Atributos
translations_gpt:
---

{% include menu.html %}

Una clase vacía no es muy útil. Un objeto necesita sus propios datos. Para esto, das a la clase unos _atributos_. Un atributo es un dato dentro de un objeto. Para crear un atributo, escribe la palabra clave `has` dentro de la clase:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Cada objeto recibe su propia copia de estos atributos. Les das valores cuando creas el objeto. Pasa los valores a `new` como argumentos con nombre:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Mira el `$.` de `has $.name`. Hace dos cosas. Primero, crea un atributo. Segundo, crea un método con el mismo nombre. Este método devuelve el valor del atributo. Un método así se llama _accesor_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Objetos distintos guardan sus propios valores. No los comparten:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Los temas siguientes muestran dos cosas. Primero, creas atributos que puedes cambiar. Después das valores por defecto a los atributos. También hay una manera de crear atributos _privados_. El código de fuera del objeto no los ve. Volvemos a ellos después de los métodos.

{% include nav.html %}
