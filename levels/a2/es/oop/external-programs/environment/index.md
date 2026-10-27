---
title: El entorno
translations_gpt:
---

{% include menu.html %}

Todo programa empieza con un conjunto de _variables de entorno_. Cada una es un valor con nombre. Algunos ejemplos son `HOME`, `PATH` y `USER`. El sistema operativo da estos valores al programa. En Raku, los encuentras en el hash dinámico `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

Lees una variable de entorno por su nombre. Usa el nombre como clave en `%*ENV`. `%*ENV` es un hash normal. Así que también puedes comprobar si una variable está definida. Incluso puedes cambiarla para los programas que inicias:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Puedes poner una clave en `%*ENV`. Entonces la clave pasa a ser parte del entorno. Ahora inicias un programa con `run` o `shell`. Este programa es un hijo de tu programa. Cada programa hijo recibe el mismo entorno. Así pasas ajustes a un programa hijo:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Tu programa pone la variable *antes* de iniciar el hijo. Aquí, `run` inicia una shell como hijo. Una shell es un programa que lee órdenes y las ejecuta. Esta shell ya tiene `GREETING` en su propio entorno. Así que puede imprimir el valor con `echo`. Puedes poner cualquier variable de esta forma. Luego llega a todos los programas que inicias más tarde.

El twigil `*` te dice que `%*ENV` es una variable dinámica. Un twigil es un signo después del sigilo. `$*OUT` también es una variable dinámica. La conociste en la parte sobre entrada y salida. Otras variables con asterisco te hablan del programa en marcha. `@*ARGS` contiene los argumentos de la línea de comandos. Son los valores después del nombre del programa en la orden. `$*PROGRAM-NAME` es el nombre del propio guion. Juntas, estas variables le dicen a un programa cómo empezó.

{% include nav.html %}
