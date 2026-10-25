---
title: Interpolación de código
---

{% include menu.html %}

La interpolación de código es el siguiente nivel de interpolación. Te permite poner código directamente dentro de una cadena entre comillas dobles. ¡El código puede ser simple, o incluso complejo!

El código que quieres interpolar va entre llaves:

```raku
my $a = 10;
my $b = 20;
say "La suma de $a y $b es {$a + $b}.";
```

El programa imprime:

```console
$ raku t.raku 
La suma de 10 y 20 es 30.
```

## Variables de nuevo

Un uso de este método es cuando una variable debe ir seguida de un texto. Ese texto se podría leer por error como el resto del nombre de la variable. Para evitarlo, pon la variable entre llaves:

```raku
my $how-many = 5;
my $what = 'traje';
say "Hay $how-many {$what}s."; # Hay 5 trajes.
```

Sin llaves, Raku intentaría interpolar `$whats`, una variable que no existe.

{% include nav.html %}
