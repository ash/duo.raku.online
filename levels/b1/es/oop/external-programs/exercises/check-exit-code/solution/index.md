---
title: 'Solución: Compruebe el código de salida'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `run` devuelve un `Proc`. Aquí es importante guardarlo en `$proc` y después leerlo. Si tiras el `Proc` de una orden que falla, este lanza una excepción. Pero mirar el resultado cuenta como manejarlo.

1. `.exitcode` es el número que devolvió la orden: `4`. Comprobar el `Proc` como booleano responde a una pregunta más simple: ¿funcionó? Es verdadero solo cuando el código de salida es `0`. Aquí es falso, así que el programa imprime `failure`.

{% include nav.html %}
