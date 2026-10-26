---
title: 'Solution: Cargar en tiempo de ejecución'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `require` carga el módulo en tiempo de ejecución, no en tiempo de compilación. Por sí solo, no importa nada. Así que Raku no conoce el nombre `hello`.

1. La lista `<&hello>` le dice a `require` que importe solo este nombre. Después de esta instrucción, puedes llamar a `hello('Sam')` directamente. Da `Hello, Sam!`.

1. Para *esto* tenemos `require`. Funciona en tiempo de ejecución. Así que puede estar dentro de un `if`. Con `--quiet`, el programa salta esta rama. Así que nunca carga el módulo. Un `use` siempre carga el módulo. Funciona en tiempo de compilación.

{% include nav.html %}
