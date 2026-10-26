---
title: 'Solution: Limpiar al salir'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Encuentra el programa en el archivo [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Salida

```
Working
Cleanup
```

## Comentarios

1. Primero, el programa imprime `Working`. Luego `return` sale de la subrutina enseguida. Así que el programa nunca imprime `never reached`.

1. El cuerpo termina antes de tiempo. Pero el phaser `LEAVE` todavía se ejecuta al salir. Imprime `Cleanup`. Siempre puedes estar seguro de esto. Por eso `LEAVE` es el lugar correcto para liberar recursos. Siempre se ejecuta, sin importar cómo termina el bloque.

{% include nav.html %}
