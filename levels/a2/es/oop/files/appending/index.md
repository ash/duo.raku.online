---
title: Añadir a un archivo
translations_gpt:
---

{% include menu.html %}

Normalmente, `spurt` sustituye todo el contenido anterior del archivo. Pero a veces quieres añadir algo al final de un archivo. Para eso, pasa el argumento con nombre `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

El segundo `spurt` conserva el contenido anterior. Añade la línea nueva después de él. Así que, al final, el archivo tiene las dos líneas:

```
line1
line2
```

Sin `:append`, la segunda llamada escribe encima del archivo. Entonces el archivo solo tiene `line2`. Añadir algo al final de un archivo se llama en inglés «append». Es útil, por ejemplo, para los archivos de registro. Un archivo de registro guarda un historial del trabajo de un programa. Cada ejecución del programa añade algo a este historial. Así que el historial crece. El programa no vuelve a empezar con un archivo vacío.

{% include nav.html %}
