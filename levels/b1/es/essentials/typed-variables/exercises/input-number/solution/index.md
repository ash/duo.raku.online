---
title: 'Solution: Convertir la entrada del usuario a un número'
---

{% include menu.html %}

El programa puede ser tan simple como esto:

## Código

```raku
my Int $n = prompt 'Introduce un número: ';
say $n;
```

🦋 Puedes encontrar el código fuente en el archivo [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Ejemplo

Ejecútalo e introduce un entero, que puede ser positivo o negativo:

```console
$ raku exercises/typed-variables/input-number.raku
Introduce un número: -42
-42
```

## Comentarios

Como hemos [visto](/es/essentials/typed-variables/allomorphs), aquí `prompt` devuelve un valor `IntStr`. Puedes asignarlo a una variable `Int` sin ninguna coerción.

Ten en cuenta, sin embargo, que algunas cadenas no se pueden convertir en un entero. Si escribes una cadena así, el programa se detiene con una excepción.

{% include nav.html %}
