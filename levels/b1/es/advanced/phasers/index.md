---
title: Phasers
---

{% include menu.html %}

Un _phaser_ es un bloque especial. Se ejecuta automáticamente en un momento concreto de la vida de un programa. No se ejecuta donde aparece en el código fuente. No llamas a un phaser. Solo dices _cuándo_ debe ejecutarse su código, con el nombre del bloque.

Los phasers más comunes marcan las etapas de todo el programa:

* `BEGIN` se ejecuta lo antes posible, mientras Raku todavía compila el programa;
* `INIT` se ejecuta una vez cuando el programa empieza, antes del código principal;
* `END` se ejecuta una vez al final de todo, cuando el código principal ya ha terminado.

El siguiente programa pone estos phasers entre instrucciones normales. Observa que la salida no sigue el orden de las líneas del archivo:

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

`BEGIN` se ejecuta primero, mientras se compila el programa. Después, cuando el programa se ejecuta, `INIT` va antes del cuerpo principal. El cuerpo principal imprime a continuación. `END` se ejecuta al final, sin importar dónde esté escrito en el archivo.

`END` se usa a menudo justo antes de que el programa termine. Puede imprimir un resumen o limpiar algo. `BEGIN` es útil para el trabajo que debe ocurrir antes que cualquier otra cosa.

{% include nav.html %}
