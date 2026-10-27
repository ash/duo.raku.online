---
title: Quiz — El objeto Proc
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | un error

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` es el número entero que devolvió el programa. Aquí, la shell recibió la orden `exit 2`. Así que el número es `2`. El programa no lanza ninguna excepción. Así que no se detiene con un error. El programa guarda el `Proc` que falla en `$proc`. Después lo mira con `.exitcode`. Mirar el resultado cuenta como manejarlo. Solo obtienes una excepción en un caso. Es cuando tiras un `Proc` que falla sin comprobarlo.

</div>

{% include nav.html %}
