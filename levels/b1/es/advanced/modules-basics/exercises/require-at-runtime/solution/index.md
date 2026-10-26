---
title: 'Solution: Cargar en tiempo de ejecución'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

El programa, `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Salida

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Comentarios

1. `require` carga el módulo en tiempo de ejecución en lugar de en tiempo de compilación. Por sí solo, no importa nada. Por eso Raku no conocería un simple `hello`.

1. La lista `<&hello>` le indica a `require` que importe solo ese símbolo. Así que, después de esta instrucción, puedes llamar a `hello('Sam')` directamente, y da `Hello, Sam!`.

1. Para *esto* sirve `require`. Como funciona en tiempo de ejecución, puede estar dentro de un `if`. Cuando das `--quiet`, esa rama se salta y el módulo nunca se carga. Un `use` en tiempo de compilación no podría evitar cargarlo.

{% include nav.html %}
