---
title: 'Solution: La parte del dominio'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `index('@')` devuelve `4`. Es la posición del signo `@`. La cuenta empieza desde cero.

1. `substr($at + 1)` empieza un carácter después del `@`. No indica una longitud. Por eso llega hasta el final de la cadena. El resultado es `example.com`.

{% include nav.html %}
