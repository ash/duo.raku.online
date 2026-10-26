---
title: Atributos de lectura y escritura
translations_gpt:
---

{% include menu.html %}

Por defecto, el accesor que crea `has $.name` es de _solo lectura_. El constructor, `new`, fija el valor cuando crea el objeto. Después, el código de fuera del objeto puede leer el valor, pero no puede cambiarlo. Asignarle un valor es un error:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

El programa se detiene con este mensaje:

```
Cannot modify an immutable Str (Rex)
```

¿Quieres cambiar el valor a través del accesor? Entonces marca el atributo con el rasgo `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Ahora el accesor devuelve un contenedor escribible. Así que la asignación funciona, y el `name` del objeto cambia a `Max`.

{% include nav.html %}
