---
title: Bucles `for`
---

{% include menu.html %}

El bucle `for` es muy útil. Pasa por muchos elementos, uno a uno. Por ejemplo, toma un rango:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` recibe el siguiente valor del rango cada vez. No necesitas escribir `my` antes de `$n`. El bloque se ejecuta una vez para cada valor del rango. Así, el programa imprime los números, uno en cada línea:

```console
$ raku t.raku 
1
2
3
4
5
```

El programa pasa por todos los valores del [rango](/es/essentials/ranges) `1..5`. Estos valores son `1`, `2`, `3`, `4` y `5`.

## Más de un valor a la vez

En Raku, un bucle puede tomar dos o más elementos cada vez. Este programa imprime dos números a la vez:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Esto es lo que imprime el programa:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
