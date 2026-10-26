---
title: '`WHO` y `HOW`'
---

{% include menu.html %}

Otras dos herramientas de introspección son `HOW` y `WHO`. Completan el conjunto.

## `HOW`

Cada valor en Raku tiene un _metaobjeto_ detrás. Un metaobjeto es un objeto. Sabe cómo funciona el tipo del valor. `HOW` es la forma corta de _Higher Order Workings_. Devuelve el metaobjeto:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Ya usas el metaobjeto. Quizás no lo notaste. El `.^` en `.^name` es una llamada a un método. Esta llamada pasa por `HOW`. Estas dos líneas hacen lo mismo:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Así que `$x.^name` es solo una forma corta de escribir `$x.HOW.name($x)`. Observa que el objeto entra otra vez como argumento. ¿Por qué? Todos los valores de un tipo *comparten* un metaobjeto. Los métodos del metaobjeto son meta-métodos. Un meta-método debe saber por qué objeto preguntas. La forma `.^` pasa el objeto por ti. Para `name`, Raku no usa este argumento. Pero la forma correcta y general es pasarlo. Algunos meta-métodos sí lo usan.

Esto también vale para otros meta-métodos. Un ejemplo es `.^methods`. Da una lista de métodos. Puedes llamar a estos métodos sobre el valor.

## `WHO`

`WHO` devuelve el _paquete_ de un nombre. Es una tabla de los nombres, o símbolos, de ese espacio de nombres:

```raku
say Int.WHO.^name; # Stash
```

Un `Stash` es un hash para una tabla de símbolos. Es útil con los módulos. Con él, puedes buscar los nombres de un módulo. Volvemos a él en [la sección sobre módulos](/es/advanced/module-introspection). Por ahora, solo recuerda que `WHO` existe. Recuerda también qué te da.

{% include nav.html %}
