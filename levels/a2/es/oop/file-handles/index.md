---
title: Manejadores de archivo
translations_gpt:
---

{% include menu.html %}

Es fácil leer o escribir un archivo entero de una vez. Pero a veces quieres recorrer un archivo línea a línea. O quieres escribir muchas veces en un archivo. El archivo debe seguir abierto todo ese tiempo. Para eso, usas un _manejador de archivo_. Un manejador de archivo es un objeto para un archivo abierto. Con él, lees del archivo o escribes en él.

Esta es la forma más fácil de leer un archivo línea a línea. Ni siquiera necesitas crear tú un manejador. Llama al método `lines` sobre un objeto de ruta. Te da las líneas una a una. Están listas para un bucle `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Cada `$line` es una línea. No hay salto de línea al final. El programa imprime:

```
ONE
TWO
THREE
```

También puedes escribir en un archivo con un manejador. Primero, abre el archivo con `open` y la bandera `:w`. Esta bandera significa escribir (write). Después usa los métodos `say` o `print` del manejador. Al final, ciérralo con `close`:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Cierra el manejador al final. Así todos tus datos llegan de verdad al disco. Algunos archivos son demasiado grandes para la memoria. No puedes leerlos enteros de una vez. Con estos archivos, normalmente lees línea a línea, como arriba.

{% include nav.html %}
