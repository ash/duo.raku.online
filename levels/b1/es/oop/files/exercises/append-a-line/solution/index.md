---
title: 'Solución: Construya un registro'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El primer `spurt` crea un archivo nuevo que contiene la línea `start`.

1. Cada `spurt` dentro del bucle usa `:append`. Así que añade su línea después del contenido que ya hay y no sustituye el archivo. Así es exactamente como crece un archivo de registro. Cada vuelta del bucle añade una línea más al final. Lo mismo hace cada ejecución de un programa.

1. Sin `:append`, cada vuelta escribiría encima del archivo. Solo quedaría la última línea.

{% include nav.html %}
