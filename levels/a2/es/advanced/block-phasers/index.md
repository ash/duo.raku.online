---
title: Phasers de bloque
---

{% include menu.html %}

Ya conoces los phasers de todo el programa. Raku también tiene phasers para un solo bloque o un solo bucle. Pertenecen a la vida de ese bloque o bucle.

## Entrar en un bloque y salir de él

El phaser `ENTER` se ejecuta cada vez que el programa entra en un bloque. El phaser `LEAVE` se ejecuta cada vez que el programa sale del bloque. Su lugar en el bloque no importa:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Mira la salida. `ENTER` se ejecuta primero, y `LEAVE` se ejecuta al final. El cuerpo del bloque está entre los dos:

```
before block
entering
inside
leaving
after block
```

`LEAVE` es muy útil. Se ejecuta incluso cuando el bloque termina antes de tiempo. Así que allí puedes liberar un recurso sin peligro, como un archivo abierto.

Un phaser puede tener un bloque `{ }` completo, no solo una sentencia. También puedes tener varios phasers. Un bloque puede tener más de un `LEAVE`. Entonces se ejecutan en orden inverso. El último se ejecuta primero. Funciona como una pila. Lo último que entra sale primero:

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

El programa abre primero el recurso `A`. Lo cierra al final:

```
open A
open B
work
close B
close A
done
```

Este orden es «último en entrar, primero en salir». Es justo lo que necesitas para la limpieza. Lo último que preparas es lo primero que quitas. El phaser `END` de todo el programa funciona igual. Varios bloques `END` también se ejecutan en orden inverso.

## Phasers para bucles

Los bucles tienen tres phasers más. Marcan los pasos del bucle. `FIRST` se ejecuta una vez, antes de la primera vuelta. `LAST` se ejecuta una vez, después de la última vuelta. `NEXT` se ejecuta al final de cada vuelta:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

El bucle imprime:

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

Pasa lo mismo que con otros phasers. Puedes escribir `FIRST`, `NEXT` y `LAST` en cualquier lugar del bucle. Cada uno se ejecuta en su propio momento.

{% include nav.html %}
