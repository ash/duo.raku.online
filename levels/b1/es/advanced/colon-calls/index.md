---
title: Llamadas con dos puntos
---

{% include menu.html %}

Cuando llamas a un método o una subrutina, normalmente pones sus argumentos entre paréntesis: `@a.grep(* > 5)`. Raku también tiene una segunda forma. Pones **dos puntos** después del nombre. Entonces todo lo que va detrás se convierte en la lista de argumentos. No necesitas ningún paréntesis:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Los dos puntos en `grep:` hacen el mismo trabajo que los paréntesis. Así que `(1..10).grep: * %% 2` significa exactamente `(1..10).grep(* %% 2)`. Siempre puedes usar una forma en lugar de la otra:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

La forma con dos puntos es más agradable con métodos que reciben un **bloque** o una expresión [Whatever](/es/advanced/whatever). Esto es porque quita un nivel de paréntesis dentro de paréntesis. Compara:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentesis alrededor del bloque
say @a.sort: { $^b <=> $^a }; # dos puntos — sin parentesis de cierre que emparejar
```

Las dos líneas imprimen `(3 2 1)`, pero la versión con dos puntos es más fácil de leer. Esto es así sobre todo cuando el bloque es largo.

Ya usas llamadas sin paréntesis con operadores de lista, como `say 1, 2, 3`. Ahí, `say` toma todo lo que va detrás como sus argumentos. La forma con dos puntos es lo mismo para las llamadas a métodos. Hay una regla que debes recordar. La forma con dos puntos toma el **resto de la sentencia** como sus argumentos. Así que debe ir al **final** de una cadena de llamadas. Por eso funciona `('a' .. 'z')».uc».ord.grep: 60 < * < 70`. Aquí, `grep` es la última llamada, y no hay nada encadenado después. Si necesitas llamar a más métodos, usa en su lugar la forma con paréntesis. O agrupa las partes de toda la expresión para que quede claro:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Hay una cosa con la que debes tener cuidado. No uses los dos puntos **y** paréntesis juntos, como en `.grep:( … )`. Esto choca con `:( … )`, la sintaxis de un literal de firma. Así que Raku no puede leer el código. Usa `.grep( … )` o `.grep: …`. Usa una forma u otra, pero no las dos.

{% include nav.html %}
