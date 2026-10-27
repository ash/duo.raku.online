---
title: Capturar la salida
translations_gpt:
---

{% include menu.html %}

A veces tu programa necesita leer lo que imprime un programa externo, en lugar de mostrarlo. Para hacerlo, pasa `:out` al iniciar el programa. El `Proc` devuelto tiene entonces un manejador `.out` del que puedes leer:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` envía la salida estándar del programa al `Proc`. El manejador `.out` funciona como los manejadores de archivo de la sección anterior. `.slurp` lee todo de él de una vez. El adverbio `:close` es un atajo útil: cierra el manejador por ti después de leer. Tú mismo hacías la misma limpieza con `.close` sobre un manejador de archivo. Así no queda nada abierto. Por último, `.chomp` quita el salto de línea que `echo` añade al final.

Lo mismo funciona con `shell`. Esto es útil cuando quieres capturar el resultado de una tubería:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

También puedes capturar el flujo de errores, con `:err` y el manejador `.err` correspondiente. Si pasas `:out` y `:err` a la vez, los dos flujos quedan separados. Cada uno tiene su propio manejador, así que puedes leerlos por separado:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Aquí, la orden de la shell imprime una línea en la salida estándar y otra en el error estándar. La parte `>&2` redirige la segunda línea ahí. Hemos pedido los dos flujos, así que `.out` y `.err` los guardan por separado. La salida normal del programa nunca se mezcla con sus mensajes de error.

Capturar la salida te permite usar un programa externo como pieza de construcción. Lo ejecutas, lees su resultado y sigues con esos datos en tu propio programa.

{% include nav.html %}
