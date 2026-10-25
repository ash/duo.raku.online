---
title: 'Solution: Tablas booleanas'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea. El programa imprime todos los resultados de las operaciones booleanas.

## Código

```raku
say 'True && True is ', True && True; 
say 'True && False is ', True && False;
say 'False && True is ', False && True;
say 'False && False is ', False && False;

say 'True || True is ', True || True; 
say 'True || False is ', True || False;
say 'False || True is ', False || True;
say 'False || False is ', False || False;

say 'True ^^ True is ', True ^^ True; 
say 'True ^^ False is ', True ^^ False;
say 'False ^^ True is ', False ^^ True;
say 'False ^^ False is ', False ^^ False;
```

🦋 Puedes encontrar el código completo en el archivo [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Salida

Ejecuta el programa. Imprime esta tabla.

```console
$ raku tables.raku
True && True is True
True && False is False
False && True is False
False && False is False
True || True is True
True || False is True
False || True is True
False || False is False
True ^^ True is Nil
True ^^ False is True
False ^^ True is True
False ^^ False is False
```

## Comentarios

Nota que aquí no necesitas paréntesis alrededor de las operaciones booleanas. Esto es por la precedencia. La precedencia es el orden en que Raku hace las operaciones. Las operaciones booleanas tienen una precedencia más alta. Así que Raku las hace primero. Pero con la concatenación de cadenas, sí necesitas los paréntesis:

```raku
say 'True && True is ' ~ (True && True);
```

También puedes poner el código dentro de la cadena. Esto se llama [interpolación de código](/es/essentials/strings/code-interpolation).

{% include nav.html %}
