---
title: 'Solución: Capture el error'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Puedes encontrar el código fuente en el archivo [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Salida

```
42
False
broken
```

## Comentarios

1. Cuando el bloque se ejecuta sin errores, `try` simplemente da el valor del bloque. Así que `$ok` contiene `42`.

1. El `die` del segundo bloque lanza una excepción. Así que ese bloque da un valor no definido, y `$bad.defined` es `False`.

1. La excepción capturada se guarda en la variable especial `$!`. `$!.message` devuelve el texto que se le dio, `broken`.

{% include nav.html %}
