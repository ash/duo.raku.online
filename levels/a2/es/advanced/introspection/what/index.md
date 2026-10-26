---
title: Usando `WHAT`
---

{% include menu.html %}

`WHAT` es un pseudo-método. Te da el tipo de un valor. Lo usas casi como `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Los dos imprimen el tipo, pero se ven un poco diferentes. `.^name` da solo el nombre. `WHAT` da el tipo mismo, como un objeto de tipo. Lo muestra entre paréntesis:

```
Int
(Int)
```

Toma una variable sin restricción de tipo. Al principio, su tipo es `Any`. Luego asignas un valor. Ahora `^name` y `WHAT` muestran los dos el tipo de este valor:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Con una restricción de tipo, Raku conoce el tipo enseguida. Esto pasa incluso antes de asignar un valor:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Comparando objetos de tipo

`WHAT` devuelve el objeto de tipo mismo. Así que puedes comparar dos objetos de tipo. Usa para esto el operador `===`. Es el operador de _identidad de valor_. Comprueba si los dos lados son el mismo valor. Cada tipo tiene solo un objeto de tipo. Así que `===` comprueba fácilmente si dos valores tienen el mismo tipo:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` compara números. Pero `===` compara identidad. Así que funciona directamente con objetos de tipo. También funciona con otros valores.

{% include nav.html %}
