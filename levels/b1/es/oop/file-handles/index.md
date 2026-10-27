---
title: Manejadores de archivo
translations_gpt:
---

{% include menu.html %}

Leer o escribir un archivo entero de una vez es fácil. Pero a veces quieres recorrer un archivo línea a línea. O quizá quieras mantener un archivo abierto y escribir en él muchas veces. Para eso, usas un _manejador de archivo_.

Esta es la forma más sencilla de leer un archivo línea a línea. Ni siquiera necesitas crear un manejador para ello. El método `lines` de un objeto de ruta te da las líneas de una en una. Están listas para un bucle `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Cada `$line` es una línea sin el salto de línea del final. El programa imprime:

```
ONE
TWO
THREE
```

Para escribir con un manejador, abre el archivo con `open` y la bandera `:w` (write). Después usa los métodos `say` o `print` del manejador. Cuando termines, ciérralo con `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Cerrar el manejador asegura que todo lo que escribiste se guarda de verdad en el disco. Algunos archivos son demasiado grandes para cargarlos en memoria de una vez. Con ellos, normalmente lees línea a línea, como arriba.

{% include nav.html %}
