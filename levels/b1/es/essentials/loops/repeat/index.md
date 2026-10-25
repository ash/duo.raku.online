---
title: Uso de `repeat`
---

{% include menu.html %}

Los bloques `while` y `until` pueden no ejecutarse nunca si la condición es `False` al principio. El bloque `repeat`, en cambio, siempre se ejecuta al menos una vez. La condición se comprueba después del bloque de código. Para la comprobación, usas las mismas palabras `while` o `until`.

Mira este programa.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

La variable `$x` empieza con el valor `100`, y la condición `while` comprueba si `$x` es menor o igual a `10`. Con este valor, la condición ya es `False`, pero el bloque de código igualmente se ejecuta una vez primero.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Vamos a cambiar el programa para usar `until` en su lugar.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Ejecútalo para comprobar que funciona como se espera:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
