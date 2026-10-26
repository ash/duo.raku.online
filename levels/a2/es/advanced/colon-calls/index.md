---
title: Llamadas con dos puntos
---

{% include menu.html %}

Normalmente, los argumentos de un método o una subrutina van entre paréntesis: `@a.grep(* > 5)`. Raku tiene una segunda forma. Pon **dos puntos** después del nombre. Todo lo que sigue a los dos puntos es la lista de argumentos. No necesitas ningún paréntesis:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

Los dos puntos en `grep:` hacen el mismo trabajo que los paréntesis. `(1..10).grep: * %% 2` significa exactamente lo mismo que `(1..10).grep(* %% 2)`. Puedes usar cualquiera de las dos formas:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

La forma con dos puntos es más agradable con algunos métodos. Esos métodos reciben un **bloque** o una expresión [Whatever](/es/advanced/whatever). Los dos puntos quitan un nivel de paréntesis. Compara:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # parentesis alrededor del bloque
say @a.sort: { $^b <=> $^a }; # dos puntos — sin parentesis de cierre que emparejar
```

Las dos líneas imprimen `(3 2 1)`. Pero la versión con dos puntos es más fácil de leer. Esto es aún más cierto con un bloque largo.

Ya conoces las llamadas sin paréntesis. Las usas con operadores de lista, como `say 1, 2, 3`. Ahí, `say` toma todo lo que va detrás como sus argumentos. La forma con dos puntos es la misma idea para los métodos. Recuerda una regla. La forma con dos puntos toma el **resto de la sentencia** como argumentos. Así que debe estar al **final** de una cadena de llamadas. Por eso funciona `('a' .. 'z')».uc».ord.grep: 60 < * < 70`. `grep` es la última llamada. Nada va después de ella en la cadena. ¿Necesitas llamar a más métodos? Entonces usa la forma con paréntesis. O agrupa con paréntesis las partes de toda la expresión. Así el código queda claro:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Ten cuidado con una cosa. No uses los dos puntos **y** paréntesis juntos, como `.grep:( … )`. En Raku, `:( … )` significa otra cosa. Es una firma, escrita como un valor. Así que Raku no puede leer este código. Usa `.grep( … )` o `.grep: …`. Usa una de las dos formas, pero no las dos.

{% include nav.html %}
