---
title: 'Solution: División por resta'
---

{% include menu.html %}

La división es una resta repetida. El programa tiene un bucle `while` que resta `$b` de `$a` y lo repite mientras el valor actual de `$a` no sea menor que `$b`. La variable `$n` cuenta las iteraciones, y también es el resultado que necesitamos.

## Código

Aquí está el programa completo:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Encuentra el programa en el archivo [división-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Salida

Ejecuta el programa unas cuantas veces. Comienza con los valores dados, que dan una división exacta:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Luego intenta, por ejemplo, cambiar `$b` a `20`, y comprueba que el resultado es correcto:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
