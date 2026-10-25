---
title: Uso de `while`
---

{% include menu.html %}

El constructo `while` tiene una condición booleana y un bloque de código. Raku ejecuta el bloque de código una y otra vez _mientras_ la condición sea `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Introduce un número, que no sea mayor que 10: ';
    say "Has introducido $x.";
}
say "$x es mayor que 10.";
```

El programa te pide introducir un número. Si el número no es mayor que 10, el cuerpo del bucle se ejecuta otra vez. Tan pronto como el número rompe la condición `$x <= 10`, el bucle termina y el programa continúa con la línea siguiente.

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
