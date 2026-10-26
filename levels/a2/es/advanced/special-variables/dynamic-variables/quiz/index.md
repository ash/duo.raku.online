---
title: Quiz — Variables dinámicas
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` está en el nivel superior. Está justo al lado de `my $*n = 1`. Pero este lugar no importa. Raku busca una variable dinámica a través de la *pila de llamadas*. No mira dónde está el código. Aquí, `run` llama a `show`. Y `run` declara `$*n` otra vez como `2`. Así que se usa este valor, y el programa imprime `2`.

</div>

{% include nav.html %}
