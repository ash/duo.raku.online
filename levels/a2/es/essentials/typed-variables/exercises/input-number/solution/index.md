---
title: 'Solution: Convertir la entrada del usuario a un número'
---

{% include menu.html %}

El programa puede ser muy simple:

## Código

```raku
my Int $n = prompt 'Introduce un número: ';
say $n;
```

🦋 Puedes encontrar el código fuente en el archivo [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Ejemplo

Ejecútalo y escribe un entero. Puede ser positivo o negativo:

```console
$ raku exercises/typed-variables/input-number.raku
Introduce un número: -42
-42
```

## Comentarios

[Ya vimos](/es/essentials/typed-variables/allomorphs) que `prompt` devuelve un valor `IntStr`. Puedes asignar este valor a una variable `Int`. No necesitas convertirlo.

Pero ten cuidado. A veces escribes una cadena que Raku no puede convertir en un entero. Entonces el programa se para con una excepción.

{% include nav.html %}
