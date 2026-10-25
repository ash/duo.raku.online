---
title: 'Solution: Saludar a una persona'
---

{% include menu.html %}

Aquí tienes una posible solución a la tarea.

## Código

```raku
my $name = prompt '¿Cuál es tu nombre? ';
say '¡Hola, ', $name, '!';
```

🦋 Puedes encontrar el código fuente en el archivo [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Salida

Ejecuta el programa y escribe un nombre cuando te lo pida:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
¿Cuál es tu nombre? Inge
¡Hola, Inge!
```

## Comentarios

1. Cuando el programa lo pide, el usuario escribe una cadena. El programa guarda esta cadena en una variable escalar, `$name`. Usas la variable en la lista que pasas a la rutina `say`. Por eso el nombre aparece en el mensaje.

1. Una forma mejor de resolver este problema es usar la interpolación de cadenas. Volveremos a él pronto.

{% include nav.html %}
