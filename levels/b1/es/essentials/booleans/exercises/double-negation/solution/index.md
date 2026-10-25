---
title: 'Solution: Doble negación'
---

{% include menu.html %}

Para resolver la segunda parte del ejercicio, extendamos el programa. Podemos usar otra vez la misma variable:

## Código

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Puedes encontrar el código completo en el archivo [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Comentarios

Antes de ejecutar el programa, pensemos en lo que imprimirá. Hay dos operadores de negación antes de la variable. Funcionan como dos negaciones separadas. En el primer caso, el valor cambia de `False` a `True`. Luego cambia enseguida otra vez de `True` a `False`. El segundo caso funciona de la misma manera. Después de dos negaciones, obtenemos el valor booleano original.

## Salida

El programa imprime la siguiente salida, que muestra que teníamos razón:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
