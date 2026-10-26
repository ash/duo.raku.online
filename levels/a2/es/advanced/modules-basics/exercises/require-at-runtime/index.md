---
title: Cargar en tiempo de ejecución
translations_gpt:
---

{% include menu.html %}

## Problema

Aquí tienes un módulo, `Greeting.rakumod`. Exporta una subrutina `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Carga este módulo con `require`, no con `use`. Entonces el programa lo carga en **tiempo de ejecución**, mientras se ejecuta. `require` no importa nombres automáticamente. Por eso, escribe el nombre que quieres, de esta forma: `require Greeting <&hello>;`. Luego llama a `hello('Sam')` e imprime el resultado.

Ahora muestra por qué es útil cargar en tiempo de ejecución. Pon el `require` dentro de un `sub MAIN` con una bandera `--quiet`. El módulo se carga *solo* cuando de verdad quieres un saludo. Con `--quiet`, el programa no toca el módulo para nada. Solo imprime `Silence.`

## Ejemplo

Ejecuta el programa con el módulo en la ruta de búsqueda. El programa imprime:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
