---
title: 'Solution: Argumentos nominales slurpy'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Encuentra el programa en el archivo [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Salida

```
Anna: colour=red, size=5
```

## Comentarios

1. El parámetro posicional fijo `$name` recibe su valor primero. Después, el slurpy `*%opts` recoge en un hash todos los argumentos nombrados que quedan.

1. `%opts.sort` pone los pares en orden por clave, así que la salida es siempre la misma: `colour` va antes que `size`. El `.map` convierte cada par en una cadena `key=value` con `.key` y `.value`. Después, `.join(', ')` une las cadenas.

1. La cadena final incluye los valores de `$name` y del `$details` ya terminado. Esto da `Anna: colour=red, size=5`.

{% include nav.html %}
