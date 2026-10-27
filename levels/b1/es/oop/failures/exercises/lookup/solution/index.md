---
title: 'Solución: Búsqueda o no encontrado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Puedes encontrar el código fuente en el archivo [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Salida

```
not found
reason: no such key
```

## Comentarios

1. `lookup('z')` llama a `fail`, así que devuelve un `Failure` no definido.

1. El resultado no está definido, así que el programa imprime `not found`. No intenta usar el valor fallido.

1. Un `Failure` sigue llevando la excepción que describe qué salió mal. La obtienes con `$r.exception`. Esto también marca el fallo como manejado, así que no lanzará nada más tarde. Después `.message` lee el texto que se le pasó a `fail`, `no such key`.

{% include nav.html %}
