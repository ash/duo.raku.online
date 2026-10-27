---
title: 'Solución: Triplicar como subrutina'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Aquí, `triple` es una subrutina. Es independiente. Recibe como argumento el valor para su trabajo.

1. El otro ejercicio resuelve la misma tarea con un método. Así puedes comparar las dos formas.

{% include nav.html %}
