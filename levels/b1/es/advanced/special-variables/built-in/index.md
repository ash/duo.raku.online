---
title: Variables especiales integradas
---

{% include menu.html %}

Raku define un conjunto de variables para ti. La mayoría de ellas son _dinámicas_, con el twigil `*`. Así que puedes leerlas en cualquier lugar, como viste con las [variables dinámicas](/es/advanced/special-variables/dynamic-variables). Incluso puedes anularlas para un ámbito. Estas son las que vas a necesitar más a menudo.

## Flujos estándar

La entrada y la salida pasan por tres variables dinámicas: `$*OUT` para la salida estándar, `$*ERR` para el error estándar y `$*IN` para la entrada estándar. `say` y `print` escriben en `$*OUT`. Para enviar texto al error estándar, llama al método sobre `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Como estas variables son dinámicas, puedes redirigir `$*OUT` en un bloque. Entonces todo lo que llamas dentro de ese bloque envía su salida al nuevo lugar. No necesitas cambiar nada de ese código.

## El programa y su proceso

Unas pocas variables dan información sobre el propio programa en ejecución:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Sus valores cambian cada vez que ejecutas el programa. Así que aquí no hay una salida fija para mostrar.

## Línea de comandos y entorno

Los argumentos y el entorno llegan en dos contenedores que están listos para usar:

* `@*ARGS` — la lista de argumentos de línea de comandos (una subrutina `MAIN` recibe los mismos)
* `%*ENV` — las variables de entorno, en un hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Estas variables integradas te ahorran reunir tú mismo la misma información. Además son dinámicas, así que Raku las busca a través de la pila de llamadas. Por eso puedes anular cualquier variable integrada `$*` para un ámbito. Esto funciona exactamente como con una variable `$*` propia.

Además de estas variables dinámicas, Raku también tiene las variables integradas `?` de tiempo de compilación: `$?FILE` y `$?LINE`. Ya las viste en la página de [twigils](/es/advanced/special-variables/twigils).

{% include nav.html %}
