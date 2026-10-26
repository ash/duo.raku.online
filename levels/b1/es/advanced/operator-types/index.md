---
title: Tipos de operadores en Raku
translations_gpt:
---

{% include menu.html %}

Ya has usado muchos operadores, como `+`, `~` y `++`. Los operandos son los valores con los que trabaja un operador. En Raku, los operadores se dividen en categorías según _dónde_ están respecto a sus operandos. Conocer las categorías te ayudará más adelante, cuando crees tus propios operadores.

## `prefix`

Un operador prefijo va _antes_ de su único operando:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Aquí, `-` cambia el signo del número. El operador `?` convierte un valor en su valor booleano.

## `infix`

Un operador infijo está _entre_ dos operandos. La mayoría de los operadores aritméticos y de cadenas que conoces funcionan así:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Un operador infijo no tiene que ser un símbolo. También puede ser una palabra. Por ejemplo, el operador `gcd` de la sección de [números enteros](/es/advanced/integers) es un operador infijo. Es un nombre que escribes entre sus dos operandos:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Un operador postfijo va _después_ de su único operando:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` y `postcircumfix`

Un operador circumfijo va _alrededor_ de su operando. Los corchetes que crean un arreglo son un ejemplo:

```raku
my @a = [1, 2, 3];
```

Un operador postcircumfijo también va alrededor de algo, pero viene después de un término. Un subíndice, como el `[1]` después de `@a`, es un operador postcircumfijo:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Estos son los nombres de las categorías: `prefix`, `infix`, `postfix`, `circumfix` y `postcircumfix`. Como verás más adelante, Raku usa las mismas palabras para [declarar un nuevo operador](/es/advanced/user-defined-operators).

{% include nav.html %}
