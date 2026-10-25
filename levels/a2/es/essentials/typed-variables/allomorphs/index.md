---
title: Alomorfos
---

{% include menu.html %}

Mira este programa. No lo ejecutes todavía. ¿Puedes decir qué valores de entrada lo rompen? ¿Y en qué línea?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

El programa crea tres variables escalares. Dos de ellas, `$i` y `$s`, son variables tipadas. Así que `$i` solo puede guardar enteros. Y `$s` solo puede guardar cadenas.

`prompt` devuelve un valor. Su tipo depende de los caracteres que escribimos. A veces la cadena de entrada puede ser un número entero. Entonces el resultado tiene el tipo `IntStr`. Este tipo es _tanto_ `Int` como `Str`. Así que puedes asignarlo a una variable `Int`. También puedes asignarlo a una variable `Str`. Por ejemplo, escribes `1234`. Entonces el programa no se rompe.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

El tipo `IntStr` es un ejemplo de _alomorfo_. Un alomorfo es un tipo de dato hecho de otros dos tipos. Aquí hay algunos ejemplos más.

Ahora escribe una cadena que no puede ser un entero. El programa se rompe. Esto pasa cuando asignamos `$input` a `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

A veces la cadena de entrada es un número, pero no un entero. Fíjate en que entonces también obtienes un error. Un contenedor entero no puede guardar un número de punto flotante. Tampoco puede guardar un número racional. Así que obtienes una excepción:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

La segunda asignación, `$s = $input`, nunca se rompe. Una cadena puede tomar cualquier entrada.

🦋 Puedes encontrar el código fuente de este programa en el archivo [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
