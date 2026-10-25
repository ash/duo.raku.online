---
title: Uso de `until`
---

{% include menu.html %}

Un bucle `until` es lo contrario de un bucle `while`. Ejecuta el bloque de código hasta que la condición sea `True`. Así que se ejecuta mientras la condición es `False`.

Aquí tienes otra vez el [programa de la página anterior](../while). Ahora tiene `until` y una condición nueva:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Introduce un número que no sea mayor que 10: ';
    say "Has introducido $x.";
}
say "$x es mayor que 10.";
```

Ejecuta el programa y mira lo que imprime:

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

Estos dos programas hacen lo mismo. Uno tiene `while` y otro tiene `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Mira las dos condiciones. Una es lo contrario de la otra. `while` y `until` son una pareja, como `if` y `unless`.

{% include nav.html %}
