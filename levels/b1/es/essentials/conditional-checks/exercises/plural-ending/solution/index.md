---
title: 'Solution: Terminación plural'
---

{% include menu.html %}

El programa debe verificar si el número es mayor que uno. Si lo es, la palabra debe estar en forma plural.

## Código

```raku
my $n = prompt '¿Cuántos archivos copiar? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n archivo{$ending} copiado.";
```

🦋 Encuentra el programa en el archivo [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Salida

Ejecuta el programa dos o más veces. Prueba la entrada `1` y también otro número entero positivo:

```console
$ raku exercises/conditional-checks/plural-ending.raku
¿Cuántos archivos copiar? 10
10 archivos copiados.

$ raku exercises/conditional-checks/plural-ending.raku
¿Cuántos archivos copiar? 1
1 archivo copiado.
```

## Comentario

A menudo puedes escribir por error un solo `?` en lugar del doble `??`. También puedes escribir dos puntos `:` en lugar de `!!`, o cometer los dos errores.

{% include nav.html %}
