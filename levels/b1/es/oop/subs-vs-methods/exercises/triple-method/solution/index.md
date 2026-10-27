---
title: 'Solución: Triplicar como método'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Como método, `triple` pertenece al objeto y usa el `n` del objeto. No le pasas nada.

1. En la versión con subrutina, los datos llegan como argumento. Aquí, en cambio, los datos viven en el objeto. Las dos versiones dan `21`.

{% include nav.html %}
