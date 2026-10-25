---
title: 'Solution: Intercambiar valores'
---

{% include menu.html %}

Este programa usa sintaxis de Raku de la sección sobre [variables escalares](/es/essentials/scalar-variables).

## Código

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Puedes encontrar el código fuente en el archivo [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Salida

Ejecuta el programa. Comprueba que imprime los valores en el otro orden.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Comentarios

El programa tiene tres pasos. Primero, crea las variables y les da valores. Luego intercambia los valores. Al final, los imprime. Cada paso usa las dos variables en una instrucción. Mira la parte más interesante. Aquí, las variables intercambian sus valores:

```raku
($a, $b) = $b, $a;
```

Necesitas paréntesis en el lado izquierdo. También puedes ponerlos en el lado derecho:

```raku
($a, $b) = ($b, $a);
```

¿Qué pasa sin los paréntesis?

```raku
$a, $b = $b, $a;
```

Entonces recibes una advertencia. Dice que `$a` en el lado derecho no se usa:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

En realidad, esta línea es lo mismo que `$b = $b`. Esta asignación no hace nada útil. Puedes verlo fácilmente. Cambia los valores del lado derecho, por ejemplo, así:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Ahora el programa imprime todavía más advertencias. Pero también puedes ver otra cosa. Solo `$b` recibe un nuevo valor:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
