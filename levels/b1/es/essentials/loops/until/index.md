---
title: Uso de `until`
---

{% include menu.html %}

El bucle `until` hace lo contrario de `while`. Ejecuta el bloque de código hasta que la condición se vuelva `True`. En otras palabras, se ejecuta mientras la condición sea `False`.

Este es el [programa de la página anterior](../while), pero ahora con `until` y una nueva condición:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Introduce un número que no sea mayor que 10: ';
    say "Has introducido $x.";
}
say "$x es mayor que 10.";
```

Ejecuta el programa y mira la salida:

```console
$ raku t.raku 
Introduce un número que no sea mayor que 10: 10
Has introducido 10.
Introduce un número que no sea mayor que 10: 4
Has introducido 4.
Introduce un número que no sea mayor que 10: 1
Has introducido 1.
Introduce un número que no sea mayor que 10: 20
Has introducido 20.
20 es mayor que 10.
```

## `until` vs. `while`

Compara dos programas que hacen lo mismo, uno con `while` y otro con `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Como puedes ver, cada condición es lo contrario de la otra. Así, `while` y `until` forman una pareja de la misma manera que `if` y `unless`.

{% include nav.html %}
