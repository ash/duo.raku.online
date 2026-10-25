---
title: 'Solution: Intercambiar valores'
---

{% include menu.html %}

En este programa, usamos partes de la sintaxis de Raku de la sección sobre [variables escalares](/es/essentials/scalar-variables).

## Código

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Puedes encontrar el código fuente en el archivo [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Salida

Ejecuta el programa y comprueba que imprime los valores en un orden diferente.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Comentarios

Este programa tiene tres pasos. Crea y asigna las variables, intercambia sus valores y los imprime. Cada paso usa las dos variables en la misma instrucción. La parte más interesante es cómo las variables intercambian sus valores:

```raku
($a, $b) = $b, $a;
```

Los paréntesis del lado izquierdo son necesarios. Pero también puedes ponerlos en el lado derecho:

```raku
($a, $b) = ($b, $a);
```

¿Qué pasa si quitas los paréntesis?

```raku
$a, $b = $b, $a;
```

En este caso, Raku te advierte que `$a` en el lado derecho no se usa:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

En realidad, esta línea hace lo mismo que la asignación inútil `$b = $b`. Puedes verlo fácilmente si cambias los valores de la derecha, por ejemplo:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Esta vez, hay todavía más advertencias. Pero también puedes ver que solo `$b` cambió su valor:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
