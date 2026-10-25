---
title: Uso de `repeat`
---

{% include menu.html %}

A veces un bloque `while` o `until` no se ejecuta ni una vez. Esto pasa cuando la condición es `False` al principio. Un bloque `repeat` es diferente: siempre se ejecuta al menos una vez. Raku comprueba la condición después del bloque. Usas las mismas palabras, `while` o `until`, para la comprobación.

Mira este programa.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Al principio, la variable `$x` es `100`. La condición `while` comprueba si `$x` es menor o igual a `10`. Con este valor, la condición ya es `False`. Pero el bloque de código se ejecuta primero de todas formas.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Ahora vamos a cambiar el programa y a usar `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Ejecútalo y comprueba que funciona:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
