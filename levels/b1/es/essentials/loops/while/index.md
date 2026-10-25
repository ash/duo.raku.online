---
title: Uso de `while`
---

{% include menu.html %}

El bucle `while` tiene una condición booleana (`True` o `False`) y un bloque de código. Raku repite el bloque _mientras_ la condición sea `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Introduce un número, que no sea mayor que 10: ';
    say "Has introducido $x.";
}
say "$x es mayor que 10.";
```

El programa te pide introducir un número. Si el número no es mayor que 10, el cuerpo del bucle se ejecuta otra vez. Cuando un número no cumple la condición `$x <= 10`, el bucle termina. Luego el programa continúa con la línea siguiente.

```console
$ raku t.raku
Introduce un número, que no sea mayor que 10: 10
Has introducido 10.
Introduce un número, que no sea mayor que 10: 4
Has introducido 4.
Introduce un número, que no sea mayor que 10: 1
Has introducido 1.
Introduce un número, que no sea mayor que 10: 20
Has introducido 20.
20 es mayor que 10.
```

{% include nav.html %}
