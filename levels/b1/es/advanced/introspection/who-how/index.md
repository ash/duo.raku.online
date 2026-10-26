---
title: '`WHO` y `HOW`'
---

{% include menu.html %}

Las dos últimas herramientas de introspección del conjunto son `HOW` y `WHO`.

## `HOW`

Detrás de cada valor en Raku, hay un _metaobjeto_. Es un objeto que sabe cómo funciona el tipo del valor. `HOW`, que es la forma corta de _Higher Order Workings_, devuelve este metaobjeto:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

De hecho, has usado el metaobjeto todo el tiempo, quizás sin darte cuenta. El `.^` en `.^name` es una llamada a un método que pasa por `HOW`. Estas dos líneas hacen lo mismo:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Así que `$x.^name` es solo una forma más corta de escribir `$x.HOW.name($x)`. Observa que el objeto se pasa otra vez como argumento. Esto es porque todos los valores del tipo *comparten* el mismo metaobjeto. Así que hay que decirle a un meta-método por qué objeto preguntas. La forma `.^` hace esto por ti automáticamente. Para `name`, en realidad el argumento no se usa. Pero pasarlo es la forma correcta y general, porque algunos meta-métodos sí lo usan.

Lo mismo vale para otros meta-métodos que puedes encontrar, como `.^methods`. Da una lista de los métodos que puedes llamar sobre un valor.

## `WHO`

`WHO` devuelve el _paquete_ al que pertenece un nombre. Es la tabla de los símbolos que están definidos en ese espacio de nombres:

```raku
say Int.WHO.^name; # Stash
```

Un `Stash` es un hash que guarda una tabla de símbolos. Se vuelve útil cuando trabajas con módulos. Entonces te permite buscar los nombres que define un módulo. Volveremos a él en [la sección sobre módulos](/es/advanced/module-introspection). Por ahora, basta con saber que `WHO` existe y qué devuelve.

{% include nav.html %}
