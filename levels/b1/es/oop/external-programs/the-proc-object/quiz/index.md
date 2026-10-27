---
title: Quiz — El objeto Proc
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el programa siguiente?

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

`.exitcode` es el número entero que devolvió el programa. Aquí se le dijo a la shell `exit 2`, así que es `2`. El programa no lanza ninguna excepción. El `Proc` que falla se guarda en `$proc` y se comprueba con `.exitcode`. Mirar el resultado cuenta como manejarlo. Solo habría una excepción si un `Proc` que falla se tirara sin comprobarlo.

</div>

{% include nav.html %}
