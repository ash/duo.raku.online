---
title: Clases
translations_gpt:
---

{% include menu.html %}

Hasta ahora, todos los tipos de datos que has usado venían incluidos en Raku. Eran números, cadenas, arrays y otros. Con la _programación orientada a objetos_, puedes definir tus propios tipos, que se llaman _clases_. También puedes crear valores de esos tipos, que se llaman _objetos_.

Para definir una clase, escribe la palabra clave `class` y después un nombre y un bloque:

```raku
class Dog {
}
```

Esta clase `Dog` todavía está vacía, pero ya es un tipo nuevo. Un objeto de una clase también se llama _instancia_. Para crear una, llama al método `new` sobre el nombre de la clase:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Ahora `$rex` contiene un objeto `Dog`. Cada vez que llamas a `new`, obtienes un objeto nuevo y separado:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` y `$fido` son dos perros distintos, aunque la clase todavía está vacía. En las secciones siguientes, darás a una clase sus propios datos, los _atributos_. También le darás su propio comportamiento, los _métodos_. El primer tema mira más de cerca en qué se diferencia una clase de sus instancias.

{% include nav.html %}
