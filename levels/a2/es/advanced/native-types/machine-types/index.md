---
title: Tipos a nivel de máquina
---

{% include menu.html %}

Los tipos nativos tienen nombres en minúsculas: `int`, `num` y `str`. Declaras una variable con ellos igual que con `Int` o `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Un valor nativo corresponde directamente a un registro o una palabra de la máquina. Son pequeños lugares para datos dentro del ordenador. Un valor normal de Raku tiene un objeto envolvente a su alrededor. Un valor nativo no tiene envoltorio. Por eso los tipos nativos son más rápidos y ocupan menos memoria. Esto es importante en arrays grandes. También es importante en bucles cortos que calculan mucho.

Hay algo que debes saber desde el principio. Una variable nativa nunca es indefinida. Una variable `Int` normal empieza como indefinida. `say` la muestra como `(Int)`. Pero un `int` nativo empieza en **cero**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Lo mismo pasa con los arrays nativos. Para declarar uno, escribe el tipo nativo antes de la variable `@`:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Un array así guarda sus elementos como enteros simples de la máquina. No son objetos `Int` completos. Por eso el array usa menos memoria. Puedes preguntar a un valor nativo por su tipo. Entonces Raku lo pone automáticamente en el tipo completo correspondiente. Decimos que el valor está _encapsulado_. Por eso `(my int $b).WHAT` muestra `(Int)`.

{% include nav.html %}
