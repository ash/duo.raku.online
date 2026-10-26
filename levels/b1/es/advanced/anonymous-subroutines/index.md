---
title: Subrutinas anónimas
translations_gpt:
---

{% include menu.html %}

Una subrutina no tiene que tener un nombre. Una subrutina _anónima_ se ve igual que una normal, solo que sin nombre. Normalmente se guarda en una variable, para poder llamarla más tarde.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

La variable `$double` contiene la subrutina. Después, `$double(5)` la llama con el argumento `5`.

## Bloques puntiagudos

Raku tiene una forma más corta de escribir lo mismo: el _bloque puntiagudo_. La flecha `->` va antes de los parámetros. No necesitas ni la palabra `sub` ni paréntesis alrededor de ellos:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Casi siempre, una subrutina anónima pequeña se escribe así.

## El sigilo `&`

Quizás quieras llamar a la subrutina por un nombre, no a través de una variable `$`. En ese caso, declara la variable con el sigilo `&`. Entonces puedes llamarla sin el sigilo, igual que una subrutina normal:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Pasarla a otra función

No tienes por qué guardar una subrutina anónima en una variable. Es solo un valor. Así que puedes pasarla directamente a una función que necesite una. Algunos ejemplos son `map`, `grep` o `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Aquí, el bloque puntiagudo es la subrutina anónima. `map` la llama una vez para cada elemento. De hecho, llevas todo este tiempo haciendo esto. Has pasado muchos bloques `{ ... }` y `-> $x { ... }` a `map` y `grep`. Cada uno de ellos es una pequeña subrutina anónima. La escribes justo donde la necesitas, en lugar de darle un nombre primero.

{% include nav.html %}
