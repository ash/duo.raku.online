---
title: Uso de `repeat`
---

{% include menu.html %}

Un bloque `while` o `until` puede no ejecutarse nunca si la condición es `False` desde el principio. Un bloque `repeat`, en cambio, siempre se ejecuta al menos una vez. Su condición se comprueba después del bloque. Para la comprobación, usas las mismas palabras, `while` o `until`.

Echa un vistazo a este programa.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

La variable `$x` empieza en `100`. La condición `while` comprueba si `$x` es menor o igual a `10`. Con este valor, la condición ya es `False`, pero el bloque igualmente se ejecuta una vez primero.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Ahora vamos a cambiar el programa para usar `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Ejecútalo para comprobar que funciona como esperas:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
