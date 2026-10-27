---
title: 'Solución: Un aviso con `note`'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Puedes encontrar el código fuente en el archivo [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Salida

```
Warning: the value is negative
3
```

## Comentarios

1. `note` manda el aviso al error estándar. Solo lo hace cuando el valor es de verdad negativo. `say` manda el resultado real a la salida estándar. El resultado es el valor absoluto, `3`.

1. El aviso va al error estándar. Así que no entra en la salida real del programa. `2>/dev/null` tira el error estándar. Entonces solo queda el `3`.

{% include nav.html %}
