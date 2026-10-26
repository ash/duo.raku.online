---
title: Contexto de ítem y de lista
---

{% include menu.html %}

Hay dos contextos más. Deciden una cosa. ¿Es un valor una **lista** de varios valores? ¿O es un solo **elemento**? Los sigils `@` y `$` muestran esta diferencia.

En _contexto de lista_, un array se convierte en sus elementos separados. Un bucle `for` pone su argumento en contexto de lista. Así que el bucle recorre cada elemento:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

En _contexto de elemento_, el mismo array es un solo valor. El contextualizador `$( … )` pone el contexto de elemento. Ahora el bucle ve solo una cosa. Así que se ejecuta una vez:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

El contexto de elemento también explica esto. Asignas un array a un escalar. El escalar recibe el array completo como un solo elemento. No copia los elementos. La razón es que `my $x = @a` pone `@a` en contexto de elemento. Ten en cuenta que este único elemento puede ser otro contenedor. Y este contenedor puede tener muchos elementos dentro:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` es un contenedor escalar. Así que ahora guarda un solo objeto. Este objeto es un `Array`. Puedes comprobarlo fácilmente. Usa `$var` como una especie de referencia a array. Así lo llaman otros lenguajes:

```raku
say $var[1]; # 2
```

El contextualizador `@( … )` hace lo contrario. Pone el contexto de lista.

También existe el _contexto sink_. En contexto sink, nadie usa el valor de una sentencia. Raku simplemente tira el valor. Por ejemplo, una línea puede estar ahí solo por su efecto secundario. Un efecto secundario es una acción extra del código, como imprimir. A veces un valor en contexto sink no hace nada útil. Entonces Raku puede avisarte de un “uso inútil”. Esta es una pista útil. Probablemente olvidaste usar un resultado.

El sigil, `$` o `@`, es en realidad una elección de contexto. A veces necesitas otro contexto. Entonces los contextualizadores `$( )` y `@( )` lo cambian.

{% include nav.html %}
