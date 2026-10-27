---
title: El objeto Proc
translations_gpt:
---

{% include menu.html %}

Cada llamada a `run` o `shell` devuelve un objeto `Proc`. Es un pequeño registro que describe qué programa se ejecutó y cómo terminó. Los temas anteriores usaron su manejador `.out` para leer la salida. Pero un `Proc` guarda más cosas.

La parte más útil es el **código de salida**. Con un número entero pequeño, un programa le dice a quien lo inició si tuvo éxito. `0` significa éxito. Cualquier otro número es un código de fallo que elige el propio programa. `.exitcode` te da ese número:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Normalmente solo haces una pregunta de sí o no: ¿funcionó? Para esto, un `Proc` es simplemente verdadero cuando el código de salida es `0`. Si no, es falso. Así que puedes comprobarlo directamente:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Un `Proc` también recuerda qué orden inició, en `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Hay una cosa a la que debes prestar atención. Si una orden falla y simplemente **ignoras** el `Proc` devuelto, Raku lanza una excepción. No deja pasar el fallo sin aviso:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Un código de salida distinto de cero suele significar que algo salió mal. Así que si tiras un `Proc` que falla, este lanza una excepción. Esto pasa cuando sale de su ámbito. Lo que causa esto es *tirar* el resultado, no ignorar el código de salida. Basta con guardar el `Proc` en una variable para evitar la excepción. Ni siquiera tienes que volver a mirarlo.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Así que, si *esperas* que una orden pueda fallar, guarda su `Proc`. Después mira `.exitcode`, o compruébalo como booleano. Haz esto siempre que quieras saber qué pasó.

{% include nav.html %}
