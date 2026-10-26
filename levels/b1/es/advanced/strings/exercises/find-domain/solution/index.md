---
title: 'Solution: La parte del dominio'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Encuentra el programa en el archivo [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Salida

```
example.com
```

## Comentarios

1. `index('@')` devuelve `4`, que es la posición del signo `@`, contando desde cero.

1. `substr($at + 1)` empieza un carácter después del `@`. Como no se indica ninguna longitud, llega hasta el final de la cadena. El resultado es `example.com`.

{% include nav.html %}
