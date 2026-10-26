---
title: 'Solution: Una variable dinámica'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Puedes encontrar el código fuente en el archivo [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Salida

```
running as guest
running as admin
```

## Comentarios

1. El twigil `*` hace dinámica a `$*user`. `whoami` nunca la recibe como parámetro. Encuentra el valor a través de la pila de llamadas. Así que la primera llamada muestra el valor predeterminado, `guest`.

1. El bloque interno declara `$*user` otra vez como `admin`. Esto dura mientras se ejecuta el bloque. La *misma* `whoami` ahora ve `admin`. La búsqueda dinámica mira quién está ahora en la pila de llamadas. Anulas una variable dinámica en un ámbito. Entonces todo el código que llamas desde allí recibe más derechos. Y no cambias `whoami` para nada.

{% include nav.html %}
