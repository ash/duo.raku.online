---
title: Tipos de operadores en Raku
translations_gpt:
---

{% include menu.html %}

Ya conoces muchos operadores, como `+`, `~` y `++`. Un operador trabaja con valores. Estos valores son sus operandos. Raku divide los operadores en categorías. Una categoría es un grupo. La categoría depende de _dónde_ está el operador junto a sus operandos. Más adelante, crearás tus propios operadores. Entonces las categorías te ayudarán.

## `prefix`

Un operador prefijo tiene un operando. Va _antes_ de ese operando:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Aquí, `-` cambia el signo del número. El operador `?` convierte un valor en `True` o `False`. Este es su valor booleano.

## `infix`

Un operador infijo está _entre_ dos operandos. Conoces muchos operadores para números y cadenas. La mayoría de ellos son infijos:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Un operador infijo no siempre es un símbolo. También puede ser una palabra. Mira el operador `gcd` de la sección sobre [números enteros](/es/advanced/integers). Es un operador infijo. Escribes su nombre entre sus dos operandos:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Un operador postfijo tiene un operando. Va _después_ de ese operando:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` y `postcircumfix`

Un operador circumfijo está _alrededor_ de su operando. Mira los corchetes que crean un arreglo. Son un operador circumfijo:

```raku
my @a = [1, 2, 3];
```

Un operador postcircumfijo también está alrededor de algo. Pero va después de un término. Un término es, por ejemplo, una variable. Los subíndices son operadores postcircumfijos. Aquí, el subíndice es el `[1]` después de `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Los nombres son `prefix`, `infix`, `postfix`, `circumfix` y `postcircumfix`. Raku usa las mismas palabras cuando [declaras un nuevo operador](/es/advanced/user-defined-operators). Verás esto más adelante.

{% include nav.html %}
