---
title: Phasers de bloque
---

{% include menu.html %}

Raku tiene phasers para todo el programa, pero también tiene otros. Estos phasers están unidos a la vida de un solo bloque o bucle.

## Entrada y salida de un bloque

El phaser `ENTER` se ejecuta cada vez que el programa entra en un bloque. El phaser `LEAVE` se ejecuta cada vez que sale del bloque. No importa en qué línea los escribas:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

La salida muestra que `ENTER` se ejecuta primero y `LEAVE` se ejecuta al final. El cuerpo del bloque se ejecuta entre los dos:

```
before block
entering
inside
leaving
after block
```

`LEAVE` es especialmente útil porque se ejecuta incluso si el bloque termina antes de tiempo. Por eso es un lugar confiable para liberar un recurso.

Un phaser puede tomar un bloque `{ }` completo en lugar de una sola sentencia. También puedes tener varios. Cuando un bloque tiene más de un `LEAVE`, se ejecutan en orden inverso. El último que se preparó se ejecuta primero. Así, el bloque funciona como una pila, de arriba abajo:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

El programa abre primero el recurso `A` y lo cierra al final:

```
open A
open B
work
close B
close A
done
```

Este orden de «último en entrar, primero en salir» es justo lo que necesitas para la limpieza. Lo que preparaste al final se quita primero. El phaser `END` de todo el programa funciona de la misma manera. Varios bloques `END` también se ejecutan en el orden inverso al que se escribieron.

## Phasers de bucle

Dentro de los bucles hay tres phasers más para las etapas del bucle. `FIRST` se ejecuta una vez antes de la primera vuelta, y `LAST` se ejecuta una vez después de la última. `NEXT` se ejecuta al final de cada vuelta:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Esta es la salida del bucle:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Como otros phasers, `FIRST`, `NEXT` y `LAST` pueden estar en cualquier lugar del código. Cada uno se ejecuta en su propio momento.

{% include nav.html %}
