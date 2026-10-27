---
title: El entorno
translations_gpt:
---

{% include menu.html %}

Todo programa empieza con un conjunto de _variables de entorno_. Son valores con nombre como `HOME`, `PATH` o `USER`, que da el sistema operativo. En Raku, están en el hash dinámico `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Para leer una variable de entorno, usas su nombre como clave en `%*ENV`. Como `%*ENV` es un hash normal, también puedes comprobar si una variable está definida. También puedes cambiarla para los programas que inicias:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Cuando pones una clave en `%*ENV`, pasa a ser parte del entorno. Cada programa que inicias después con `run` o `shell` recibe también este entorno. Así es como pasas ajustes a un programa hijo:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

La variable se guarda en el entorno de tu programa *antes* de que empiece el hijo. Así que la shell que inicia `run` ya tiene `GREETING` en su propio entorno. Puede imprimir el valor con `echo`. Cualquier variable que pongas de esta forma llega a todos los programas que inicies después.

El twigil `*` muestra que `%*ENV` es una variable dinámica. También lo es `$*OUT`, que viste en la parte sobre entrada y salida. Algunas otras variables con asterisco describen el mundo del programa en marcha. `@*ARGS` contiene los argumentos de la línea de comandos, y `$*PROGRAM-NAME` es el nombre del propio guion. Juntas, ayudan a un programa a entender la situación en la que empezó.

{% include nav.html %}
