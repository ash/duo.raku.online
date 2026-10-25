---
title: '`say`'
---

{% include menu.html %}

Esto es lo que hace la rutina incorporada `say`:

1. Llama al método `gist` en sus argumentos.
1. Añade un carácter de nueva línea.
1. Convierte el resultado a UTF-8.
1. Lo envía al flujo `STDOUT`.

Para el usuario, parece simple. `say` solo imprime el contenido de una variable en la terminal y añade una nueva línea.

El primer paso necesita alguna explicación. Cada tipo de dato incorporado, como los enteros o las cadenas, tiene un método `gist`. Para estos tipos simples, devuelve un valor que representa el elemento. Las personas pueden leer este valor fácilmente.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Los arreglos y los hashes son ejemplos de datos más complejos. Para ellos, el método `gist` añade algo de formato.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Puedes llamar a `say` como una función y también como un método:

```raku
say 42;
say(42);
42.say;
```

Puedes pasar varios argumentos a `say`. Une las partes de la salida sin ningún espacio entre ellas.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
