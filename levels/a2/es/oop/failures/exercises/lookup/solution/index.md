---
title: 'Solución: Búsqueda o no encontrado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `lookup('z')` llama a `fail`. Así que devuelve un `Failure`. Un `Failure` es un valor no definido con un error dentro.

1. El resultado no está definido. Así que el programa imprime `not found`. No intenta usar el valor fallido.

1. Un `Failure` sigue guardando una excepción dentro. La excepción dice qué salió mal. `$r.exception` obtiene esta excepción. Esto también marca el fallo como manejado. Así que no causa un error más tarde. Después `.message` lee el texto de `fail`. Este texto es `no such key`.

{% include nav.html %}
