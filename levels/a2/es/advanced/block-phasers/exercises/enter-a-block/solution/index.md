---
title: 'Solution: Entrar en un bloque'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 Encuentra el programa en el archivo [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Salida

```
--entering
body 1
--entering
body 2
```

## Comentarios

1. `ENTER` se ejecuta cada vez que el programa entra en el bloque. Se ejecuta justo antes del cuerpo. El bucle entra en su cuerpo una vez en cada vuelta. Así que el programa imprime `--entering` antes de cada línea `body`.

1. Esta es la diferencia entre `ENTER` y `FIRST`. Con `FIRST`, el código se ejecuta solo una vez para todo el bucle. `ENTER` se ejecuta cada vez que el programa entra en el bloque.

{% include nav.html %}
