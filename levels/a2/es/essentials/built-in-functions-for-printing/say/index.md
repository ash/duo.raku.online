---
title: '`say`'
---

{% include menu.html %}

La rutina incorporada `say` hace cuatro cosas:

1. Llama al método `gist` en sus argumentos.
1. Añade un carácter de nueva línea.
1. Convierte el resultado a UTF-8.
1. Lo envía al flujo `STDOUT`.

Para el usuario, es simple. `say` imprime el valor de una variable en la terminal. Luego añade una nueva línea.

El primer paso necesita una explicación. Cada tipo de dato incorporado tiene un método `gist`. Los enteros y las cadenas son ejemplos de estos tipos. Para estos tipos simples, `gist` devuelve el elemento como un valor fácil de leer.

```raku
say 42; # 42
say 'Raku'; # Raku
```

Algunos datos son más complejos, por ejemplo, los arreglos o los hashes. Para estos datos, `gist` añade algo de formato.

```raku
my @data = 'alpha', 'beta', 'gamma';
say @data; # [alpha beta gamma]

my %data = alpha => 1, beta => 2, gamma => 3;
say %data; # {alpha => 1, beta => 2, gamma => 3}
```

Puedes llamar a `say` como una función. También puedes llamarla como un método:

```raku
say 42;
say(42);
42.say;
```

Puedes pasar más de un argumento a `say`. Une las partes de la salida. No hay espacios entre ellas.

```raku
say(100, 500); # 100500
```

{% include nav.html %}
