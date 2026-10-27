---
title: 'Solución: Triplicar como subrutina'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Puedes encontrar el código fuente en el archivo [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Salida

```
21
```

## Comentarios

1. Como subrutina, `triple` es independiente. Recibe como argumento el valor con el que trabaja.

1. El otro ejercicio de esta pareja resuelve la misma tarea con un método. Así puedes comparar los dos enfoques.

{% include nav.html %}
