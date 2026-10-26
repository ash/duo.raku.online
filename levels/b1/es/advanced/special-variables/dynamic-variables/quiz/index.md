---
title: Quiz — Variables dinámicas
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

`show` está escrita en el nivel superior, justo al lado de `my $*n = 1`. Pero este lugar no importa. Raku busca una variable dinámica a través de la *pila de llamadas*. El lugar donde está el código no es importante. Aquí, `show` se llama desde `run`, que declaró `$*n` otra vez como `2`. Así que este es el valor que se usa, y el programa imprime `2`.

</div>

{% include nav.html %}
