---
title: 'Solution: Clausura sobre lo externo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `message` no toma argumentos, pero aun así puede usar `$name`. Una subrutina anidada captura las variables léxicas de la subrutina que la contiene. Así que el `$name` exterior está en el ámbito.

1. Cuando se ejecuta `greet('Anna')`, `$name` vale `'Anna'`. Así que `message` devuelve `Hello, Anna!`. Las funciones auxiliares anidadas comparten el ámbito que las rodea. Eso las convierte en algo más que simples funciones ocultas.

{% include nav.html %}
