---
title: 'Solution: Una variable dinámica'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El twigil `*` hace que `$*user` sea dinámica. `whoami` nunca la recibe como parámetro. En cambio, encuentra el valor buscando hacia afuera a través de la pila de llamadas. Así que la primera llamada muestra el valor predeterminado, `guest`.

1. El bloque interno declara `$*user` otra vez como `admin`, y esto dura mientras se ejecuta el bloque. La *misma* `whoami` ahora ve `admin`. Esto es porque la búsqueda dinámica sigue a quien está en la pila en ese momento. Anular una variable dinámica en un ámbito da más derechos a todo lo que se llama desde él. Y no necesitas cambiar `whoami` para nada.

{% include nav.html %}
