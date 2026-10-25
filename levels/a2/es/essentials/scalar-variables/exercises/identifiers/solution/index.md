---
title: 'Solution: Corregir los identificadores'
---

{% include menu.html %}

Puedes corregir los identificadores de más de una forma. Aquí hay algunas formas:

## Código

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Todos estos identificadores son correctos. Pero los nombres con apóstrofes no son una buena idea. Evítalos si `$no` tienes una razón fuerte.

🦋 Puedes encontrar el código fuente en el archivo [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Salida

Este programa no imprime nada. Rakudo lo compila y lo ejecuta. No debe haber ningún error:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Comentarios

Estos son los problemas de los nombres de la tarea:

1. Un nombre no puede tener espacios: `$ A G E`.
1. Una variable necesita un sigil: `Name`. Raku sí tiene variables sin sigil. Pero incluso con ellas, no puedes escribir `my Name`.
1. Un nombre no puede empezar con un apóstrofe: `$'Middle'Name`. En realidad, aquí es una comilla simple.
1. Un nombre tampoco puede empezar con un dígito: `$2address`.
1. Un nombre no puede tener dos guiones seguidos: `$from--to`.

{% include nav.html %}
