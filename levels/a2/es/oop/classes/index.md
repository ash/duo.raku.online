---
title: Clases
translations_gpt:
---

{% include menu.html %}

Hasta ahora, solo has usado los tipos que vienen con Raku. Son números, cadenas, arrays y otros. Con la _programación orientada a objetos_, puedes crear tus propios tipos. Un tipo así se llama _clase_. Un valor de este tipo se llama _objeto_.

Para crear una clase, escribe la palabra clave `class`. Después, escribe un nombre y un bloque:

```raku
class Dog {
}
```

Esta clase `Dog` está vacía por ahora. Pero ya es un tipo nuevo. Un objeto de una clase también se llama _instancia_. `new` es un método. Para crear una instancia, llámalo sobre el nombre de la clase:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Ahora la variable `$rex` tiene dentro un objeto `Dog`. Cada llamada a `new` crea un objeto nuevo y separado:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` y `$fido` son dos perros distintos. La clase todavía está vacía, pero los perros son distintos. En las secciones siguientes, das a una clase sus propios datos. Estos datos se llaman _atributos_. Una clase también recibe su propio comportamiento, o sea, sus acciones. Estas acciones se llaman _métodos_. El primer tema mira más de cerca una clase y sus instancias. Muestra en qué se diferencian.

{% include nav.html %}
