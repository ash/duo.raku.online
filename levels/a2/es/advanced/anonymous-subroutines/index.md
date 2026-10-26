---
title: Subrutinas anónimas
translations_gpt:
---

{% include menu.html %}

Una subrutina no necesita un nombre. Una subrutina sin nombre es _anónima_. La escribes como una subrutina normal, solo que sin nombre. Normalmente, la guardas en una variable. Así puedes llamarla más tarde.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

La variable `$double` tiene la subrutina dentro. `$double(5)` llama a la subrutina con el argumento `5`.

## Bloques puntiagudos

Raku tiene una forma más corta de escribir lo mismo. Es el _bloque puntiagudo_. Tiene una flecha, `->`, antes de los parámetros. No necesitas la palabra `sub`. Tampoco necesitas paréntesis alrededor de los parámetros:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Normalmente, la gente escribe así una subrutina anónima pequeña.

## El sigilo `&`

Quizás quieres un nombre para la llamada, no una variable `$`. Entonces crea la variable con el sigilo `&`. Ahora puedes llamarla sin el sigilo. Funciona igual que una subrutina normal:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Darla a otra función

No tienes que guardar una subrutina anónima en una variable. Es solo un valor. Así que puedes darla directamente a una función. Algunas funciones necesitan un valor así, por ejemplo, `map`, `grep` o `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Aquí, el bloque puntiagudo es la subrutina anónima. `map` la llama una vez para cada elemento. De hecho, ya haces esto todo el tiempo. A menudo das un bloque `{ ... }` o `-> $x { ... }` a `map` y `grep`. Cada uno de ellos es una pequeña subrutina anónima. La escribes justo donde la necesitas. No le das un nombre antes.

{% include nav.html %}
