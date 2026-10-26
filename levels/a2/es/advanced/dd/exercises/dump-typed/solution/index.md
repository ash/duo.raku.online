---
title: 'Solution: Volcar una variable tipada'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my Int $n = 42;
dd $n;
```

🦋 Puedes encontrar el código fuente en el archivo [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Salida

```
Int $n = 42
```

## Comentarios

1. La variable tiene un tipo declarado. Por eso `dd` imprime el tipo antes del nombre: `Int $n = 42`.

1. Para una variable sin tipo, `dd` imprime solo `$n = 42`. No hay ningún tipo delante.

{% include nav.html %}
