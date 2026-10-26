---
title: Volcado de variables
---

{% include menu.html %}

Para ver el valor de una variable, llama a `dd`. Es como `say`:

```raku
my $var = 42;
dd $var;
```

`dd` muestra el valor. También muestra el nombre de la variable:

```console
$var = 42
```

Una variable puede tener un tipo declarado. Entonces `dd` también muestra el tipo. Compara la salida de este programa con la del anterior:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Esta es la diferencia principal con `say`. Llama a `dd` una vez sobre un escalar. Te muestra el nombre de la variable. También muestra el tipo de los datos, si Raku lo conoce. Así puedes poner varias llamadas a `dd` en un programa. Y aún sabes qué salida viene de qué variable.

También puedes volcar estructuras de datos más grandes, como arreglos o hashes. Entonces `dd` imprime el valor en una forma parecida al código:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Observa que el arreglo interior se ve claramente. Pero aquí `dd` no imprime el nombre de la variable. Funciona igual con los hashes. `dd` imprime las claves de un hash en orden alfabético:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
