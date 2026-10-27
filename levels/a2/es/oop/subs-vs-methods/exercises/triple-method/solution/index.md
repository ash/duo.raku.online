---
title: 'Solución: Triplicar como método'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Puedes encontrar el código fuente en el archivo [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Salida

```
21
```

## Comentarios

1. Aquí, `triple` es un método. Pertenece al objeto. Trabaja con el `n` del propio objeto. No le pasas nada.

1. Compáralo con la subrutina. Allí, los datos llegan como argumento. Aquí, los datos están en el objeto. Los dos programas dan `21`.

{% include nav.html %}
