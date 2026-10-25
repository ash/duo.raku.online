---
title: Interpolación de código
---

{% include menu.html %}

La interpolación de código es el siguiente nivel de interpolación. Puedes poner código directamente dentro de una cadena entre comillas dobles. El código puede ser simple. ¡También puede ser complejo!

Escribe el código entre llaves, `{` y `}`:

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

Aquí tienes un uso de este método. A veces una variable tiene un texto justo después. Por error, Raku puede leer este texto como parte del nombre. Para evitarlo, pon la variable entre llaves:

```raku
my $how-many = 5;
my $what = 'traje';
say "Hay $how-many {$what}s."; # Hay 5 trajes.
```

Sin llaves, Raku intenta interpolar una variable `$whats`. Pero esa variable no existe.

{% include nav.html %}
