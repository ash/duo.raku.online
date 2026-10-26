---
title: 'Solution: Sobrescribir la dinámica'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Puedes encontrar el código fuente en el archivo [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Salida

```
INFO: working
DEBUG: working
```

## Comentarios

1. `task` llama a `log-it`. Pero nunca usa `$*prefix`. Aun así, el valor llega a `log-it`. La búsqueda dinámica va hacia atrás por la pila de llamadas. Va más allá de `task`. Llega al código que está en la pila en ese momento.

1. Los dos bloques ponen valores diferentes. Así que la *misma* llamada `task()` da un prefijo diferente cada vez. Por eso las variables dinámicas son útiles. La información llega a código muy abajo en la cadena de llamadas. Ninguna rutina del medio tiene que pasarla como argumento.

{% include nav.html %}
