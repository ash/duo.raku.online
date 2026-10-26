---
title: 'Solution: Una cadena cruda'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say Q{$x and \n};
```

🦋 Encuentra el programa en el archivo [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Salida

```
$x and \n
```

## Comentarios

1. `Q` es la forma de entrecomillado más literal. No interpola nada. Tampoco procesa secuencias de escape.

1. Así que `$x` queda como texto. Y `\n` queda como dos caracteres: una barra invertida y una `n`.

{% include nav.html %}
