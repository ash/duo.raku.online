---
title: Restricciones de tipo
translations_gpt:
---

{% include menu.html %}

En la [parte de Fundamentos](/es/essentials/typed-variables/type-constraints/), aprendiste a dar un tipo a una variable. Lo hiciste con una restricción de tipo. Aquí hay algo importante. El _contenedor_ comprueba esta regla. Decide qué valores acepta.

Esta declaración crea un contenedor escalar. Solo puede guardar enteros:

```raku
my Int $int;
```

Un contenedor con tipo solo acepta valores que encajan con su tipo. Por eso todas estas asignaciones funcionan:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

En este caso, Raku no cambia el tipo por sí solo. En Raku, un número con punto decimal es un valor `Rat`. Por eso no puedes asignarlo:

```raku
my Int $int;
$int = 123.45;
```

Obtienes el error en tiempo de compilación. Esto pasa antes de ejecutar el programa:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Convierte tú mismo el valor. Así no hay error:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Hay dos puntos en `123.45.Int`. No dejes que te confundan. El primer punto es el punto decimal. El segundo punto llama al método `Int`. Este método trabaja sobre el valor `Rat`, un número racional.

{% include nav.html %}
