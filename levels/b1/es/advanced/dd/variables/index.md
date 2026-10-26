---
title: Volcado de variables
---

{% include menu.html %}

Llama a `dd` para ver qué hay dentro de una variable. Se usa igual que `say`:

```raku
my $var = 42;
dd $var;
```

`dd` imprime tanto el valor como el nombre de la variable:

```console
$var = 42
```

Si la variable tiene un tipo declarado, `dd` también muestra el tipo. Compara la salida de este programa con la del anterior:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Esta es la diferencia principal con `say`. Una llamada a `dd` sobre un escalar te dice el nombre de la variable. También te dice el tipo de los datos, cuando se conoce. Así puedes añadir varias llamadas a `dd` a un programa. Aun así verás qué salida pertenece a qué variable.

También puedes volcar estructuras de datos más complejas, por ejemplo, arreglos o hashes. Entonces `dd` imprime el valor en una forma similar a código:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Observa que el arreglo anidado se ve claramente. Pero el nombre de la variable no se imprime. Lo mismo funciona con los hashes, y `dd` imprime sus claves en orden alfabético:

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
