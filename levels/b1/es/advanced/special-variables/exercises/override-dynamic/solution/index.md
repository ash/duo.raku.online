---
title: 'Solution: Sobrescribir la dinámica'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `task` llama a `log-it`, pero nunca menciona `$*prefix`. Aun así, el valor llega a `log-it`. La búsqueda dinámica va hacia afuera por la pila de llamadas, más allá de `task`. Llega a quien está en la pila en ese momento.

1. Los dos bloques fijan valores diferentes. Así que la *misma* llamada a `task()` da un prefijo diferente cada vez. Esto es lo que hace útiles a las variables dinámicas. El contexto llega a código muy anidado. No tienes que pasarlo como argumento por cada rutina intermedia.

{% include nav.html %}
