---
title: 'Solution: Silenciar una advertencia'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Puedes encontrar el código fuente en el archivo [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Salida

```
Hello, !
```

## Comentarios

1. Aquí, el `$name` indefinido entra en la cadena. Normalmente, esto da una advertencia: «uso de valor no inicializado». Pero la expresión está dentro de `quietly`. Así que la advertencia queda oculta. El programa imprime solo el saludo.

1. Como `do`, `quietly` devuelve el valor de su bloque. Así que el programa guarda la nueva cadena en `$greeting`. Falta el nombre, así que hay un hueco vacío en la cadena.

1. `quietly` solo oculta la advertencia. El valor sigue indefinido. A lo mejor quieres *ocuparte* del valor que falta. Entonces da un valor predeterminado con el operador definido-o `//`. `$name // 'friend'` da `'friend'` cuando `$name` está indefinido. Así que `"Hello, " ~ ($name // 'friend') ~ "!"` imprime `Hello, friend!`. No hay ninguna advertencia.

{% include nav.html %}
