---
title: 'Solution: Doble negación'
---

{% include menu.html %}

Vamos a añadir código para la segunda parte de la tarea. Usamos otra vez la misma variable:

## Código

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Puedes encontrar el código completo en el archivo [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Comentarios

No ejecutes el programa todavía. Primero, pensemos: ¿qué imprime? Hay dos operadores de negación antes de la variable. Una negación cambia `False` a `True` y `True` a `False`. Aquí, los dos `!` funcionan como dos operadores de negación separados. En el primer caso, la primera negación cambia `False` a `True`. Luego la segunda negación lo cambia otra vez a `False` enseguida. El segundo caso funciona de la misma manera. Después de dos negaciones, tenemos el valor booleano del principio.

## Salida

Aquí está la salida del programa. Muestra que teníamos razón:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
