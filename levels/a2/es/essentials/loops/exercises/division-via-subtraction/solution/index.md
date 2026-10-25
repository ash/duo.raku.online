---
title: 'Solution: División por resta'
---

{% include menu.html %}

La división es restar una y otra vez. El programa tiene un bucle `while`. Cada vez, el bucle resta `$b` de `$a`. Hace esto mientras `$a` no es menor que `$b`. La variable `$n` cuenta las vueltas. Este número es la respuesta.

## Código

Aquí tienes todo el programa:

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

Ejecuta el programa unas cuantas veces. Empieza con los números del código. Su división no deja resto:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Después, prueba otros números. Por ejemplo, cambia `$b` a `20`. Comprueba que el resultado es correcto:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
