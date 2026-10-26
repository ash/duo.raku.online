---
title: Variables especiales integradas
---

{% include menu.html %}

Raku tiene un conjunto de variables listas para ti. La mayoría son _dinámicas_, con el twigil `*`. Ya conoces las [variables dinámicas](/es/advanced/special-variables/dynamic-variables). Así que puedes leer estas variables en cualquier lugar. Incluso puedes darles un valor nuevo para un ámbito. Estas son las variables que necesitas más a menudo.

## Flujos estándar

La entrada y la salida pasan por tres variables dinámicas. `$*OUT` es la salida estándar. `$*ERR` es el error estándar, una salida para los mensajes de error. `$*IN` es la entrada estándar. `say` y `print` escriben en `$*OUT`. ¿Quieres enviar texto al error estándar? Entonces llama al método sobre `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Estas variables son dinámicas. Así que, dentro de un bloque, puedes enviar `$*OUT` a otro lugar. Entonces el código que llamas en el bloque imprime allí. No cambias nada de ese código.

## El programa y su proceso

Algunas variables te hablan del programa que se ejecuta ahora:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Sus valores son diferentes cada vez que ejecutas el programa. Por eso aquí no mostramos la salida.

## Línea de comandos y entorno

Raku pone los argumentos y el entorno en dos contenedores. Están listos para ti:

* `@*ARGS` — la lista de argumentos de línea de comandos; una subrutina `MAIN` recibe los mismos argumentos
* `%*ENV` — las variables de entorno, en un hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Estas variables integradas te ahorran trabajo. No tienes que obtener esta información tú mismo. Son dinámicas, así que Raku las busca a través de la pila de llamadas. Por eso puedes anular cualquier variable integrada `$*` para un ámbito. Funciona igual que tu propia variable `$*`.

Todas estas son variables dinámicas. Pero Raku también tiene variables integradas con el twigil `?`. Son `$?FILE` y `$?LINE`. El compilador les da sus valores antes de ejecutar el programa. Ya las viste en la página sobre [twigils](/es/advanced/special-variables/twigils).

{% include nav.html %}
