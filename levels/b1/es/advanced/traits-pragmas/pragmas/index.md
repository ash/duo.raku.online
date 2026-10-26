---
title: Pragmas
translations_gpt:
---

{% include menu.html %}

Una _pragma_ se parece a un módulo que cargas con `use`. Pero no trae ningún código. En su lugar, cambia una regla de compilación para el resto del ámbito actual. La activas con `use` y, cuando tiene sentido, la desactivas con `no`.

La pragma más importante, `strict`, está **activada por defecto** en Raku. Te obliga a declarar cada variable antes de usarla. Por eso Raku detecta un error de escritura en el nombre de una variable. Sin ella, el error crearía en silencio una variable nueva.

Si desactivas `strict` con `no strict`, esta regla ya no se aplica. Entonces puedes asignar un valor a una variable que nunca se declaró con `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Con la pragma `strict` por defecto, este `$x = 42` sin declarar sería un error en tiempo de compilación. El mensaje es *Variable '$x' is not declared*. La línea `no strict` relaja la regla hasta el final del ámbito que la contiene.

Algunas otras pragmas son `fatal`, `isms` y `variables`. `fatal` convierte un fallo silencioso en una excepción lanzada. Esto es útil cuando ya sabes manejar excepciones. `isms` permite formas de escribir que vienen de otros lenguajes. `variables` te permite ajustar las reglas para las variables. El efecto de una pragma es _léxico_. Dura solo hasta el final del bloque donde aparece. Así, puedes hacer una regla más estricta o más flexible. Puedes hacerlo justo en la parte del código donde lo necesitas.

Una pragma recibe un argumento: `lib`. Añade un directorio a la lista donde Raku busca cuando carga módulos. Hace lo mismo que la opción `-I` de la línea de comandos, pero dentro del programa:

```raku
use lib 'lib';
```

La empezarás a usar cuando comiences a escribir y cargar tus propios [módulos](/es/advanced/modules-basics/using-modules).

{% include nav.html %}
