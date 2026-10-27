---
title: 'Solución: Intento o valor por defecto'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El bloque `try` que falla da un valor no definido.

1. Así que el operador defined-or `//` devuelve su lado derecho, `'default'`. Es una forma limpia de recuperarse con un valor de reserva en una sola línea.

{% include nav.html %}
