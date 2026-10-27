---
title: 'Solución: Compruebe el código de salida'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Puedes encontrar el código fuente en el archivo [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Salida

```
4
failure
```

## Comentarios

1. `run` devuelve un `Proc`. Lo guardamos en `$proc` y después lo leemos. Esto es importante aquí. Una orden puede fallar. Si nadie guarda su `Proc`, Raku lanza una excepción. Una excepción es un error que detiene el programa. Pero aquí miramos el resultado. Esto cuenta como manejar el fallo.

1. `.exitcode` da el número que devolvió la orden. Aquí es `4`. También puedes comprobar el `Proc` como booleano. Un booleano es verdadero o falso. Esto responde a una pregunta más simple: ¿funcionó la orden? El `Proc` es verdadero solo cuando el código de salida es `0`. Aquí es falso. Así que el programa imprime `failure`.

{% include nav.html %}
