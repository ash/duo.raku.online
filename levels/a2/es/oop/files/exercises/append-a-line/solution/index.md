---
title: 'Solución: Construya un registro'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 Puedes encontrar el código fuente en el archivo [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Salida

```
start
entry 1
entry 2
entry 3
```

## Comentarios

1. El primer `spurt` hace un archivo nuevo con la línea `start`.

1. Cada `spurt` del bucle tiene `:append`. Así que añade su línea después del contenido anterior. No sustituye el archivo. Un archivo de registro crece justo de esta manera. Cada vuelta del bucle añade una línea más al final. Cada ejecución de un programa puede añadir una línea de la misma manera.

1. Sin `:append`, cada vuelta escribe encima del archivo. Entonces solo queda la última línea.

{% include nav.html %}
