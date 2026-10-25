---
title: Uso de `until`
---

{% include menu.html %}

El constructo `until` es lo opuesto a `while`. Ejecuta el bloque de código hasta que la condición se vuelva `True` (en otras palabras, mientras la condición sea `False`).

Aquí tienes el [programa de la página anterior](../while), cambiado para usar `until` y una nueva condición:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Introduce un número que no sea mayor que 10: ';
    say "Has introducido $x.";
}
say "$x es mayor que 10.";
```

Ejecuta el programa y verifica la salida:

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

Compara dos programas que hacen lo mismo con `while` y `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Como puedes ver, cada condición es lo contrario de la otra. En este sentido, `while` y `until` tienen la misma relación que `if` y `unless`.

{% include nav.html %}
