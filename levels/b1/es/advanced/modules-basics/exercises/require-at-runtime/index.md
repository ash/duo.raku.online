---
title: Cargar en tiempo de ejecución
translations_gpt:
---

{% include menu.html %}

## Problema

Tienes un módulo `Greeting.rakumod`, que exporta una subrutina `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Carga este módulo con `require` en lugar de `use`. Así se carga en **tiempo de ejecución**. `require` no importa nombres automáticamente. Así que debes indicar el símbolo que quieres, con `require Greeting <&hello>;`. Luego llama a `hello('Sam')` e imprime el resultado.

Esta tarea también muestra para qué sirve cargar en tiempo de ejecución. Pon el `require` dentro de un `sub MAIN` con una bandera `--quiet`. Así el módulo se carga *solo* cuando de verdad se necesita un saludo. Con `--quiet`, el programa imprime `Silence.` y no toca el módulo en absoluto.

## Ejemplo

Si lo ejecutas con el módulo en la ruta de búsqueda, el programa imprime:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
