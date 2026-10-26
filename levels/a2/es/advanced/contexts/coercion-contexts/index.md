---
title: Contexto numérico, de cadena y booleano
---

{% include menu.html %}

Tres contextos son muy comunes. En el primero, un valor actúa como un número. En el segundo, actúa como una cadena. En el tercero, actúa como `True` o `False`. Cada uno de estos contextos tiene un operador prefijo. El operador va antes del valor. Pone el contexto directamente:

* `+` — contexto numérico: el valor actúa como un número
* `~` — contexto de cadena: el valor actúa como una cadena
* `?` — contexto booleano: el valor actúa como `True` o `False`

Úsalos con un array. `+` da la longitud del array. `~` da sus elementos, con espacios entre ellos. `?` te dice si el array tiene elementos:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Un array vacío es `0` en contexto numérico. En contexto booleano, es `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

No siempre tienes que escribir estos operadores. Muchas veces, Raku pone el contexto correcto por ti. La aritmética pone los valores en contexto numérico. Unir cadenas los pone en contexto de cadena. Y `if`, `while`, `and` y `or` ponen su condición en contexto booleano:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Así que `if @array { … }` funciona como esperas. Un array con elementos es verdadero. Con los operadores prefijo, tú mismo pides las mismas conversiones.

También puedes poner `if` después de la sentencia. Así el código es corto y claro:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
