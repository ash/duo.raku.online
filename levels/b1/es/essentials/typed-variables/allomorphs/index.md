---
title: Alomorfos
---

{% include menu.html %}

Mira el siguiente programa. Antes de ejecutarlo, intenta adivinar. ¿Qué valores de entrada lo romperían, y en qué línea?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Aquí el programa crea tres variables escalares. Dos de ellas, `$i` y `$s`, son variables tipadas. Esto significa que `$i` solo puede almacenar enteros, y `$s` solo puede almacenar cadenas.

El tipo que devuelve `prompt` depende de los caracteres que escribimos. Si la cadena de entrada puede ser un entero, el resultado es del tipo `IntStr`. Este tipo es _tanto_ `Int` como `Str`. Así que puedes asignarlo a una variable `Int` o a una variable `Str`. Por ejemplo, si escribes `1234`, el programa no se rompe.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

El tipo `IntStr` es un ejemplo de lo que se llama un _alomorfo_. Es un tipo de dato que combina otros dos tipos. Aquí hay algunos ejemplos más.

Si escribes una cadena que no puede ser un entero, el programa se rompe. Esto pasa cuando asignamos `$input` a `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Fíjate en que también obtienes un error con un número que no es entero. Un contenedor entero no puede almacenar un número de punto flotante ni uno racional. Así que Raku lanza una excepción:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

La segunda asignación, `$s = $input`, nunca se romperá, porque una cadena puede tomar cualquier entrada.

🦋 Puedes encontrar el código fuente de este programa en el archivo [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
