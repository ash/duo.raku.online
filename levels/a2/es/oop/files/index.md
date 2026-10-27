---
title: Trabajar con archivos
translations_gpt:
---

{% include menu.html %}

Esta es la forma más fácil de trabajar con un archivo. Lees o escribes todo el archivo de una vez.

La rutina `spurt` escribe una cadena en un archivo. Crea el archivo. O, si el archivo ya existe, sustituye el contenido anterior:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

La rutina `slurp` lee todo el archivo. Te da el contenido como una cadena:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Con `spurt` y `slurp`, guardas datos y los vuelves a cargar. Solo necesitas dos llamadas cortas. Aquí usamos `print` y no `say`. La razón es que el texto ya termina con un salto de línea.

Estas rutinas trabajan con todo el archivo de una vez. Son buenas para archivos pequeños. Un archivo pequeño cabe fácilmente en la memoria. Para un archivo grande, usas un [manejador de archivo](/es/oop/file-handles). También lo usas para trabajar con un archivo línea a línea. Lo vas a ver al final de esta sección. El tema siguiente muestra cómo añadir algo a un archivo. El contenido anterior del archivo se queda ahí.

{% include nav.html %}
