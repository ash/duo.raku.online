---
title: 'Solución: Capture el error'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Aquí, el bloque se ejecuta sin errores. Entonces `try` simplemente da el valor del bloque. Así que `$ok` contiene `42`.

1. El `die` del segundo bloque lanza una excepción. Así que este bloque da un valor no definido. `$bad.defined` es `False`.

1. Raku guarda la excepción capturada en la variable especial `$!`. `$!.message` devuelve el texto de la excepción, `broken`.

{% include nav.html %}
