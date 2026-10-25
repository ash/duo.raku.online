---
title: 'Solution: Saludar a una persona'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $name = prompt '¿Cuál es tu nombre? ';
say '¡Hola, ', $name, '!';
```

🦋 Puedes encontrar el código fuente en el archivo [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Salida

Ejecuta el programa. Te pide tu nombre. Escribe un nombre:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
¿Cuál es tu nombre? Inge
¡Hola, Inge!
```

## Comentarios

1. El programa pide un nombre. El usuario escribe una cadena. La variable escalar `$name` guarda esta cadena. Luego el programa pasa una lista de valores a `say`. La variable es parte de esta lista. Así el nombre aparece en el mensaje.

1. Hay una forma mejor de resolver este problema. Usa la interpolación de cadenas. Volvemos a este problema pronto.

{% include nav.html %}
