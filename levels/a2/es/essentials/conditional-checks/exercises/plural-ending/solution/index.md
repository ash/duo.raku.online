---
title: 'Solution: Terminación plural'
---

{% include menu.html %}

El programa debe verificar el número del usuario. Si es mayor que uno, la palabra debe estar en plural.

## Código

```raku
my $n = prompt '¿Cuántos archivos copiar? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n archivo{$ending} copiado.";
```

🦋 Encuentra el programa en el archivo [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Salida

Ejecuta el programa al menos dos veces. Pruébalo con la entrada `1`. Luego prueba cualquier otro número entero mayor que cero:

```console
$ raku exercises/conditional-checks/plural-ending.raku
¿Cuántos archivos copiar? 10
10 archivos copiados.

$ raku exercises/conditional-checks/plural-ending.raku
¿Cuántos archivos copiar? 1
1 archivo copiado.
```

## Comentario

Aquí puedes equivocarte a menudo. Puedes escribir un solo `?` en lugar del doble `??`. O puedes escribir dos puntos `:` en lugar de `!!`. O puedes hacer las dos cosas.

{% include nav.html %}
