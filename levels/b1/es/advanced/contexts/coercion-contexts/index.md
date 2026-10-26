---
title: Contexto numérico, de cadena y booleano
---

{% include menu.html %}

Tres contextos son muy comunes. Hacen que un valor se comporte como un número, una cadena o un valor booleano. Para cada uno de ellos, hay un operador prefijo que fija el contexto directamente:

* `+` — contexto numérico
* `~` — contexto de cadena
* `?` — contexto booleano

Con un array, `+` da su longitud, y `~` da sus elementos unidos por espacios. `?` muestra si el array tiene algún elemento:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Un array vacío da `0` en contexto numérico y `False` en contexto booleano:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

No siempre necesitas escribir estos operadores tú mismo. Raku puede poner el contexto correcto por ti. La aritmética pone sus valores en contexto numérico, y unir cadenas los pone en contexto de cadena. `if`, `while` y `and`/`or` ponen su condición en contexto booleano:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Así que `if @array { … }` funciona justo como esperarías. Un array que no está vacío es verdadero. Los operadores prefijo son una forma de pedir las mismas conversiones directamente.

Junto con un `if` postfijo, esto te permite escribir código corto y claro:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
