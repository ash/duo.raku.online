---
title: Bucles `for`
---

{% include menu.html %}

El bucle `for` es una herramienta poderosa. Recorre muchos elementos, uno tras otro. Por ejemplo, tomemos un rango:

```raku
for 1..5 -> $n {
    say $n;
}
```

Cada vez que el bucle se ejecuta, la variable `$n` toma el siguiente valor del rango. Nota que no tienes que declarar la variable con `my`. El bloque de código se ejecuta una vez para cada elemento de la fuente de datos. Así, el programa imprime los números uno por línea:

```console
$ raku t.raku 
1
2
3
4
5
```

El programa recorre todos los valores que da el [rango](/es/essentials/ranges) `1..5`. Estos son `1`, `2`, `3`, `4` y `5`.

## Tomando más de un valor

Aquí tienes una característica interesante de Raku. Un bucle puede tomar más de un elemento a la vez. El siguiente programa imprime dos números cada vez que se ejecuta el bucle:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Esta es la salida del programa:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
