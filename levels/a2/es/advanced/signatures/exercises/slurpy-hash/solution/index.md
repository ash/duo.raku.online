---
title: 'Solution: Argumentos nominales slurpy'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Primero, el parámetro posicional fijo `$name` recibe su valor. Después, el slurpy `*%opts` recoge todos los otros argumentos nombrados. Los pone en un hash.

1. `%opts.sort` ordena los pares por clave. Así que la salida es siempre la misma: `colour` va antes que `size`. `.map` crea una cadena `key=value` a partir de cada par. Para esto usa `.key` y `.value`. Después, `.join(', ')` une las cadenas.

1. La última cadena tiene dentro los valores de `$name` y `$details`. Construimos `$details` antes. El resultado es `Anna: colour=red, size=5`.

{% include nav.html %}
