---
title: Contexto de ítem y de lista
---

{% include menu.html %}

Otros dos contextos deciden si algo es una **lista** o un solo **elemento**. Una lista tiene varios valores. Los sigils `@` y `$` se basan en esta diferencia.

En _contexto de lista_, un array se separa en sus elementos. Un bucle `for` pone su argumento en contexto de lista, así que recorre cada elemento:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

En _contexto de elemento_, el mismo array actúa como un solo valor. El contextualizador `$( … )` fija el contexto de elemento. Así que ahora el bucle ve solo una cosa y se ejecuta una vez:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Esto explica qué pasa cuando asignas un array a un escalar. El array se empaqueta en un solo elemento, y sus elementos no se copian. La razón es que `my $x = @a` pone `@a` en contexto de elemento. Ten en cuenta que este único elemento puede ser otro contenedor con muchos elementos dentro:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

La variable `$var` es un contenedor escalar, así que ahora guarda un solo objeto. Este objeto es un `Array`. Puedes demostrarlo fácilmente. Usa `$var` como una especie de referencia a array, como lo llamarían otros lenguajes:

```raku
say $var[1]; # 2
```

Su pareja, el contextualizador `@( … )`, hace lo contrario y fija el contexto de lista.

También existe el _contexto sink_. Es el contexto de una sentencia cuyo valor se tira. Por ejemplo, una línea puede estar ahí solo por su efecto secundario. A veces un valor en contexto sink no hace nada útil. Entonces Raku puede avisar de un “uso inútil”. Es una pista útil de que olvidaste usar un resultado.

Cuando eliges un sigil, `$` o `@`, en realidad eliges un contexto. Cuando hace falta, los contextualizadores `$( )` y `@( )` te permiten cambiarlo.

{% include nav.html %}
