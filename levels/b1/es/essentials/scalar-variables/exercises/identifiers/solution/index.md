---
title: 'Solution: Corregir los identificadores'
---

{% include menu.html %}

Hay varias formas de corregir los identificadores. Aquí tienes algunas:

## Código

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Todos los identificadores son válidos. Pero es mejor evitar los apóstrofes en los nombres si `$no` tienes razones fuertes.

🦋 Puedes encontrar el código fuente en el archivo [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Salida

Este programa no imprime nada. Pero cuando Rakudo lo compila y lo ejecuta, no deberías obtener ningún error:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Comentarios

Veamos qué estaba mal en los nombres originales:

1. No se permiten espacios en los nombres: `$ A G E`.
1. Una variable necesita un sigil: `Name`. Raku puede tener variables sin sigil, pero ni siquiera ellas se pueden declarar como `my Name`.
1. Un nombre no puede empezar con un apóstrofe o, para ser exactos, con una comilla simple: `$'Middle'Name`.
1. Un nombre tampoco puede empezar con un dígito: `$2address`.
1. Dos guiones no pueden ir uno detrás del otro: `$from--to`.

{% include nav.html %}
