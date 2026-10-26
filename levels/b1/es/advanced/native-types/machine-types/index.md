---
title: Tipos a nivel de máquina
---

{% include menu.html %}

Los nombres de los tipos nativos están en minúsculas: `int`, `num` y `str`. Los usas para declarar una variable, igual que `Int` o `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Un valor nativo corresponde directamente a un registro o una palabra de la máquina. No tiene el objeto envolvente que siempre tiene un valor normal de Raku. Esto hace que los tipos nativos sean más rápidos y ocupen menos memoria. Eso importa en bucles cortos que hacen muchos cálculos, y en arrays grandes.

Debes saber una cosa desde el principio: una variable nativa nunca puede ser indefinida. Una variable `Int` normal empieza como el indefinido `(Int)`. En cambio, un `int` nativo empieza en **cero**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Lo mismo ocurre con los arrays nativos. Los declaras poniendo el tipo nativo antes de la variable `@`:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Un array así guarda sus elementos como enteros crudos de la máquina, no como objetos `Int` encapsulados. Por eso usa menos memoria. Cuando le preguntas a un valor nativo sobre sí mismo, Raku lo _encapsula_ automáticamente. Pone el valor en el tipo completo correspondiente. Por eso `(my int $b).WHAT` muestra `(Int)`.

{% include nav.html %}
