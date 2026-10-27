---
title: Trabajar con archivos
translations_gpt:
---

{% include menu.html %}

En el caso más sencillo, lees o escribes un archivo entero de una vez.

La rutina `spurt` escribe una cadena en un archivo. Crea el archivo, o sustituye su contenido si el archivo ya existe:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

La rutina `slurp` vuelve a leer todo el archivo en una cadena:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Juntas, `spurt` y `slurp` guardan datos y los vuelven a cargar con solo dos llamadas cortas. Aquí usamos `print` en lugar de `say`, porque el texto ya termina con un salto de línea.

Estas rutinas trabajan con todo el archivo de una vez. Son la mejor opción para archivos pequeños, que caben fácilmente en la memoria. Para archivos más grandes, usas un [manejador de archivo](/es/oop/file-handles). También lo necesitas para trabajar con un archivo línea a línea. Vemos los manejadores de archivo al final de esta sección. El tema siguiente muestra cómo añadir a un archivo en lugar de sustituirlo.

{% include nav.html %}
