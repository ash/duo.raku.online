---
title: 'Solution: ¿Existe la clave?'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Encuentra el código fuente en el archivo [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Salida

```
False
```

## Comentarios

1. El adverbio `:exists` te dice si la clave está ahí. No obtiene el valor.

1. No hay ninguna clave `z` en el hash. Así que el resultado es `False`. Una consulta normal puede crear la clave como efecto secundario. `:exists` no hace esto.

{% include nav.html %}
