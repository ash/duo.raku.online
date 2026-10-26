---
title: Usando `WHAT`
---

{% include menu.html %}

`WHAT` es un pseudo-método que te permite obtener el tipo de un valor. Puedes usarlo casi de la misma manera que `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Los dos imprimen el tipo, pero se ven un poco diferentes. `.^name` da solo el nombre, y `WHAT` muestra el objeto de tipo entre paréntesis:

```
Int
(Int)
```

Si una variable no tiene restricción de tipo, al principio su tipo es `Any`. Después de asignar un valor, `^name` y `WHAT` muestran los dos su tipo:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

Con una restricción de tipo, el tipo se conoce enseguida, incluso antes de asignar nada:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Comparando objetos de tipo

`WHAT` devuelve el objeto de tipo mismo, así que puedes comparar dos objetos de tipo con `===`. Este es el operador de _identidad de valor_. Comprueba si los dos lados son exactamente el mismo valor. Cada tipo tiene solo un objeto de tipo. Así que esta es una forma limpia de comprobar si dos valores tienen el mismo tipo:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` compara números, pero `===` compara identidad. Así que funciona directamente con objetos de tipo, y también con otros valores.

{% include nav.html %}
