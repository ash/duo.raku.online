---
title: Trabajar con directorios
translations_gpt:
---

{% include menu.html %}

A veces necesitas trabajar con el propio sistema de archivos. Por ejemplo, quizá quieras comprobar qué existe o crear directorios. Para eso, Raku usa _objetos de ruta_. Puedes convertir cualquier cadena en un objeto de ruta con el método `.IO`. Después, el objeto de ruta responde a preguntas sobre esa ruta.

Lo más común es preguntar si una ruta existe y qué clase de cosa es:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` comprueba si la ruta existe. `.f` comprueba si es un archivo regular, y `.d` si es un directorio.

Para crear un directorio nuevo, usa `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

En el tema siguiente, verás cómo listar el contenido de un directorio.

{% include nav.html %}
