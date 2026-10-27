---
title: Añadir a un archivo
translations_gpt:
---

{% include menu.html %}

Por defecto, `spurt` sustituye todo lo que había en el archivo. Si en cambio quieres añadir al final de un archivo existente, pasa el argumento con nombre `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

El segundo `spurt` conserva el contenido anterior y añade la línea nueva después. Así que, al final, el archivo contiene las dos líneas:

```
line1
line2
```

Sin `:append`, la segunda llamada escribiría encima del archivo. Solo quedaría `line2`. Añadir al final es útil para cosas como los archivos de registro. Cada ejecución de un programa añade algo a un historial que crece, en lugar de empezar de nuevo.

{% include nav.html %}
