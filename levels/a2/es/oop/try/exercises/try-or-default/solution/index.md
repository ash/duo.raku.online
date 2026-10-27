---
title: 'Solución: Intento o valor por defecto'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $r = try { die 'no' } // 'default';

say $r;
```

🦋 Puedes encontrar el código fuente en el archivo [try-or-default.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/try-or-default.raku).

## Salida

```
default
```

## Comentarios

1. El bloque `try` falla. Así que su valor no está definido.

1. Así que el operador defined-or `//` devuelve su lado derecho. Este lado es `'default'`. Es una forma limpia de seguir después de un fallo. Solo necesitas una línea y un valor de reserva.

{% include nav.html %}
