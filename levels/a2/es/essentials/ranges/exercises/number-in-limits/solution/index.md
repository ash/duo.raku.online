---
title: 'Solution: Si el número está dentro de los límites'
---

{% include menu.html %}

El programa crea un rango con los números que ingresa el usuario. Luego una coincidencia inteligente comprueba si el tercer número está en el rango. El resultado de esta prueba es un valor booleano. Así que podemos imprimirlo enseguida.

## Código

Aquí está la solución:

```raku
my $begin = prompt 'Desde (incluido): ';
my $end = prompt 'Hasta (excluido): ';

my $n = prompt '¿Cuál es el número? ';

say $n ~~ $begin ..^ $end;
```

🦋 Encuentra el programa en el archivo [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Salida

Prueba diferentes casos. Prueba también un número igual al final del rango.

```console
$ raku exercises/ranges/number-in-limits.raku
Desde (incluido): 1
Hasta (excluido): 2
¿Cuál es el número? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
Desde (incluido): 100
Hasta (excluido): 200
¿Cuál es el número? 100
True

$ raku exercises/ranges/number-in-limits.raku
Desde (incluido): -5
Hasta (excluido): -2
¿Cuál es el número? -2
False
```

## Comentario

Nota que el extremo derecho no es parte del rango: `$begin ..^ $end`.

{% include nav.html %}
