---
title: El objeto Proc
translations_gpt:
---

{% include menu.html %}

Cada llamada a `run` o `shell` devuelve un objeto `Proc`. Es un pequeño registro sobre el programa. Te dice qué programa se ejecutó y cómo terminó. En los temas anteriores, usamos su manejador `.out` para leer la salida. Pero un `Proc` guarda más cosas.

La parte más útil es el **código de salida**. Es un número entero pequeño. Un programa lo devuelve a quien lo inició. Con este número, el programa dice si funcionó. `0` significa éxito. Cualquier otro número significa fallo. El programa mismo elige este código de fallo. `.exitcode` te da el número:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

A menudo solo haces una pregunta de «sí» o «no». ¿Funcionó? Para esto, un `Proc` es verdadero cuando el código de salida es `0`. Si no, es falso. Así que puedes comprobar el `Proc` directamente:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Un `Proc` también recuerda la orden que inició. La encuentras en `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Ten cuidado con una cosa. A veces una orden falla. ¿Y si simplemente **ignoras** el `Proc` que devuelve? Entonces Raku lanza una excepción. Una excepción es un error que detiene el programa. Raku no deja que el fallo quede oculto:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Un código de salida distinto de `0` suele significar un problema. Así que un `Proc` que falla lanza una excepción si lo tiras. Esto pasa cuando el `Proc` sale de su ámbito. Entonces ningún código puede llegar a él. No se trata de comprobar el código de salida. Se trata de *tirar* el resultado. Solo pon el `Proc` en una variable. Esto basta para evitar la excepción. Ni siquiera tienes que mirar la variable otra vez.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Así que, ¿*esperas* que una orden pueda fallar? Entonces guarda su `Proc`. Cuando quieras saber qué pasó, mira `.exitcode`. O comprueba el `Proc` como booleano.

{% include nav.html %}
