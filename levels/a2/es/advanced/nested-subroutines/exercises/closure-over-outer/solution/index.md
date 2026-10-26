---
title: 'Solution: Clausura sobre lo externo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Puedes encontrar el código fuente en el archivo [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Salida

```
Hello, Anna!
```

## Comentarios

1. `message` no toma argumentos. Pero aun así puede usar `$name`. Una subrutina anidada guarda las variables léxicas de la subrutina que la rodea. Así que el `$name` de fuera es visible dentro de `message`.

1. Durante la llamada `greet('Anna')`, `$name` vale `'Anna'`. Así que `message` devuelve `Hello, Anna!`. La función auxiliar comparte el ámbito de la subrutina que la rodea. Así que una función auxiliar anidada es más que una simple función oculta.

{% include nav.html %}
