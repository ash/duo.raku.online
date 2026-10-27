---
title: Trabajar con directorios
translations_gpt:
---

{% include menu.html %}

A veces necesitas trabajar con el propio sistema de archivos. El sistema de archivos guarda todos los archivos y directorios del disco. Por ejemplo, compruebas qué existe o creas directorios. Un directorio es una carpeta. Puede guardar archivos y otros directorios. Para este trabajo, Raku usa _objetos de ruta_. Una ruta muestra dónde está un archivo o un directorio. El método `.IO` convierte cualquier cadena en un objeto de ruta. Después el objeto de ruta responde a preguntas sobre esta ruta.

Hay dos preguntas muy comunes. ¿Existe la ruta? ¿Y qué clase de cosa hay en esa ruta?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` comprueba si la ruta existe. `.f` comprueba si es un archivo regular. `.d` comprueba si es un directorio.

`mkdir` crea un directorio nuevo:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

El tema siguiente muestra cómo listar lo que hay en un directorio.

{% include nav.html %}
