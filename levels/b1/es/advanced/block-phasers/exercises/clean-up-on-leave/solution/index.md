---
title: 'Solution: Limpiar al salir'
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Después de imprimir `Working`, `return` sale de la subrutina enseguida. Así que `never reached` nunca se imprime.

1. La ejecución salió del cuerpo antes de tiempo. Aun así, el phaser `LEAVE` se ejecuta al salir e imprime `Cleanup`. Siempre puedes contar con esto. Justo por eso `LEAVE` es el lugar correcto para liberar recursos. Se ejecuta sin importar cómo termine el bloque.

{% include nav.html %}
