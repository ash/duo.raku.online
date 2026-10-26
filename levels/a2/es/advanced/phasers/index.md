---
title: Phasers
---

{% include menu.html %}

Un _phaser_ es un bloque especial. Se ejecuta por sí solo en un momento concreto de la vida de un programa. No se ejecuta en su lugar en el código. No llamas a un phaser. Solo dices _cuándo_ debe ejecutarse su código. El nombre del bloque indica esto.

Los phasers más comunes son para las etapas de todo el programa:

* `BEGIN` se ejecuta lo antes posible. En ese momento, Raku todavía compila el programa.
* `INIT` se ejecuta una vez cuando el programa empieza. Se ejecuta antes del código principal.
* `END` se ejecuta una vez al final de todo. Se ejecuta cuando el código principal ya ha terminado.

Este programa tiene estos phasers entre instrucciones normales. Mira la salida. No sigue el orden de las líneas del archivo:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

El programa imprime:

```
BEGIN
INIT
main body
END
```

`BEGIN` se ejecuta primero, durante la compilación. Después, el programa se ejecuta. `INIT` se ejecuta antes del cuerpo principal. Luego, el cuerpo principal imprime su línea. `END` se ejecuta al final. Su lugar en el archivo no importa.

La gente usa a menudo `END` para imprimir un resumen. También lo usa para limpiar algo. Esto pasa justo antes del final del programa. `BEGIN` es útil para el trabajo que debe ocurrir antes que todo lo demás.

{% include nav.html %}
