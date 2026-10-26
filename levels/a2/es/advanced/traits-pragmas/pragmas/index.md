---
title: Pragmas
translations_gpt:
---

{% include menu.html %}

Una _pragma_ se parece a un módulo. La cargas con `use`. Pero no trae código nuevo. En su lugar, cambia una regla de compilación. El cambio funciona hasta el final del ámbito actual. Activas una pragma con `use`. Si tiene sentido, puedes desactivarla con `no`.

La pragma más importante es `strict`. En Raku, está **activada por defecto**. Con ella, debes declarar cada variable antes de usarla. Así, Raku encuentra errores de escritura en los nombres de variables. Un nombre mal escrito no crea en silencio una variable nueva.

`no strict` desactiva `strict`. Entonces esta regla desaparece. Ahora puedes asignar un valor a una variable sin `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Con la pragma `strict` normal, este `$x = 42` sin `my` es un error. Raku lo muestra en tiempo de compilación: *Variable '$x' is not declared*. La línea `no strict` desactiva esta regla. Esto dura hasta el final del ámbito.

También hay otras pragmas. `fatal` hace que un fallo silencioso lance una excepción. Esto es útil después de aprender a manejar excepciones. `isms` permite algunas formas típicas de escribir código de otros lenguajes. `variables` cambia las reglas para las variables. El efecto de una pragma es _léxico_. Funciona solo hasta el final de su bloque. Así, puedes hacer una regla más estricta o menos estricta. Puedes hacer esto justo donde lo necesitas en el código.

Una pragma recibe un argumento. Es `lib`. Raku busca módulos en una lista de directorios. `lib` añade un directorio a esta lista. Funciona como la opción `-I` de la línea de comandos. Pero la escribes dentro del programa:

```raku
use lib 'lib';
```

La necesitarás cuando escribas y cargues tus propios [módulos](/es/advanced/modules-basics/using-modules).

{% include nav.html %}
