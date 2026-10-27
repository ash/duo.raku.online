---
title: Borrar archivos y directorios
translations_gpt:
---

{% include menu.html %}

`spurt` y `mkdir` crean cosas en el disco, y otras dos rutinas las eliminan.

La rutina `unlink` borra un archivo:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` borra el archivo con el nombre que le das. Como las demás rutinas del sistema de archivos, también tiene forma de método. Lo llamas sobre un objeto de ruta: `'temp.txt'.IO.unlink`.

El borrado ocurre al momento y es definitivo. No hay papelera para recuperar el archivo. Fíjate en otra cosa sobre un archivo borrado. Debes comprobarlo con `.e` (existencia), no con `.f`. Las comprobaciones de tipo `.f` y `.d` lanzan un error si la ruta no está.

La rutina `rmdir` elimina un directorio, pero solo si está **vacío**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Si el directorio todavía tiene algo dentro, `rmdir` no elimina nada. El directorio se queda donde está. Así que, para borrar un directorio con archivos, primero vacíalo y después elimínalo:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` lista las entradas del directorio, como viste en el tema anterior. Llamar a `.unlink` sobre cada entrada la elimina. Cuando el directorio está vacío, `rmdir` puede eliminarlo. Fíjate en que este bucle simple espera que el directorio solo tenga archivos. Un árbol de subdirectorios anidados necesitaría recursión para vaciarlos primero.

{% include nav.html %}
