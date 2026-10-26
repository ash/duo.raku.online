---
title: Atributos de lectura y escritura
translations_gpt:
---

{% include menu.html %}

Por defecto, el accesor de `has $.name` es de _solo lectura_. El constructor da al atributo su valor. El constructor es el método que crea el objeto, aquí `new`. Después, el código de fuera del objeto puede leer el valor. Pero no puede cambiarlo. Intenta asignarle un valor nuevo. Esto da un error:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

El programa se detiene con este error:

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

Ahora el accesor devuelve un contenedor en el que puedes escribir. Así que la asignación funciona. El `name` del objeto ahora es `Max`.

{% include nav.html %}
