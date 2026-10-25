---
title: Bucles `for`
---

{% include menu.html %}

El bucle `for` es una herramienta potente. Pasa por muchos elementos, uno a uno. Por ejemplo, tomemos un rango:

```raku
for 1..5 -> $n {
    say $n;
}
```

En este programa, la variable `$n` recibe el siguiente valor del rango cada vez. No necesitas declarar la variable con `my`. El bloque de código se ejecuta una vez para cada elemento del rango. Así, el programa imprime los números, uno en cada línea:

```console
$ raku t.raku 
1
2
3
4
5
```

El programa pasa por todos los valores del [rango](/es/essentials/ranges) `1..5`. Estos son `1`, `2`, `3`, `4` y `5`.

## Más de un valor a la vez

En Raku, un bucle puede tomar más de un elemento a la vez. Este programa imprime dos números cada vez:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Aquí está la salida del programa:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
