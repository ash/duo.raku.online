---
title: Borrar archivos y directorios
translations_gpt:
---

{% include menu.html %}

`spurt` y `mkdir` crean cosas en el disco. Otras dos rutinas borran cosas del disco.

La rutina `unlink` borra un archivo:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` borra el archivo con el nombre que le das. Como otras rutinas del sistema de archivos, `unlink` también es un método. Lo llamas sobre un objeto de ruta: `'temp.txt'.IO.unlink`.

El borrado ocurre al momento y es para siempre. No hay papelera. No puedes recuperar el archivo. Fíjate en otra cosa más. Después de borrar un archivo, compruébalo con `.e`. Este método comprueba si la ruta existe. Aquí no uses `.f`. Las comprobaciones `.f` y `.d` miran el tipo de la ruta. Lanzan un error cuando la ruta no está.

La rutina `rmdir` elimina un directorio. Pero el directorio debe estar **vacío**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

Si el directorio no está vacío, `rmdir` no elimina nada. El directorio se queda en su sitio. Así que borras un directorio con archivos en dos pasos. Primero, lo vacías. Después, lo eliminas:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` da una lista de las entradas del directorio. Lo viste en el tema anterior. El programa llama a `.unlink` sobre cada entrada. Esto las elimina todas. Ahora el directorio está vacío. Así que `rmdir` puede eliminarlo. Este bucle simple espera solo archivos en el directorio. Pero un directorio también puede tener otros directorios dentro. Entonces primero debes vaciar cada directorio interior. Lo haces de la misma manera.

{% include nav.html %}
