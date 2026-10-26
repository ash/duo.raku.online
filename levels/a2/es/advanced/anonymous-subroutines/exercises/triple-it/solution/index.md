---
title: 'Solution: Triplicar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Encuentra el programa en el archivo [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Salida

```
21
```

## Comentarios

1. El bloque puntiagudo tiene solo un parámetro, `$x`. Pero también usa `$factor`. Esta variable viene del código que rodea el bloque. Un bloque que guarda variables así es una clausura.

1. `$factor` vale `3`, así que `$scale(7)` da `21`. Ahora cambia `$factor`. Entonces el mismo bloque usa el nuevo valor:

```raku
$factor = 5;
say $scale(7); # 35
```

La clausura guarda la *variable* misma. No guarda el valor antiguo de la variable. Así que la llamada posterior ve el nuevo `$factor`. Devuelve `35`.

{% include nav.html %}
