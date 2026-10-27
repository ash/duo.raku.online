---
title: Capturar la salida
translations_gpt:
---

{% include menu.html %}

Normalmente, un programa externo imprime en la pantalla. Pero a lo mejor quieres leer su salida en tu programa. Entonces añade `:out` al iniciar el programa. Recibes un objeto `Proc`. Tiene un manejador `.out`. Puedes leer la salida de este manejador:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` envía la salida estándar del programa al `Proc`. La salida estándar es el flujo para la salida normal de un programa. El manejador `.out` funciona como los manejadores de archivo de la sección anterior. `.slurp` lee todo su texto de una vez. El adverbio `:close` es un atajo útil. Cierra el manejador por ti después de leer. Antes, tú hacías esto con `.close` sobre un manejador de archivo. Así no queda nada abierto. Por último, `.chomp` quita el salto de línea del final. `echo` añade este salto de línea.

Lo mismo funciona con `shell`. Esto es útil con una tubería. En una tubería, una orden envía su salida a la siguiente. Con `shell`, puedes capturar el resultado final:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

También puedes capturar el flujo de errores. Este flujo se llama error estándar. Un programa imprime ahí sus mensajes de error. Para este flujo, usa `:err` y el manejador `.err`. Puedes pasar `:out` y `:err` a la vez. Entonces los dos flujos quedan separados. Cada uno tiene su propio manejador. Así puedes leer cada uno por separado:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Aquí, la orden de la shell imprime dos líneas. Una línea va a la salida estándar. La otra línea va al error estándar. La parte `>&2` la envía ahí. Pedimos los dos flujos. Así que `.out` y `.err` los guardan por separado. La salida normal del programa nunca se mezcla con sus mensajes de error.

Capturar la salida es muy útil. Un programa externo se convierte en una parte de tu propio programa. Lo ejecutas y lees su resultado. Después tu programa sigue y usa estos datos.

{% include nav.html %}
