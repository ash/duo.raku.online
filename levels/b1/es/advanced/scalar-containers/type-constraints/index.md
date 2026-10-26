---
title: Restricciones de tipo
translations_gpt:
---

{% include menu.html %}

En la [parte de Fundamentos](/es/essentials/typed-variables/type-constraints/), pusiste tipos a variables con restricciones de tipo. Es importante notar que es el _contenedor_ el que comprueba esta regla. Decide qué valores puede aceptar.

Esta declaración crea un contenedor escalar que solo puede guardar enteros:

```raku
my Int $int;
```

Un contenedor con tipo solo acepta valores que encajan con su tipo. Así que todas estas asignaciones están bien:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Aquí Raku no cambia el tipo automáticamente. En Raku, un número con punto decimal es un `Rat`. Por eso no puedes asignarlo:

```raku
my Int $int;
$int = 123.45;
```

Obtienes un error ya en tiempo de compilación:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Para evitar el error, convierte tú mismo el valor:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

No dejes que los dos puntos en `123.45.Int` te confundan. El primero es el punto decimal. El segundo llama al método `Int` sobre el valor racional, que es un `Rat`.

{% include nav.html %}
