---
title: 'Solución: Área del rectángulo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Rectangle {
    has $.width;
    has $.height;

    method area {
        $.width * $.height;
    }

    method describe {
        "area is " ~ self.area;
    }
}

say Rectangle.new(width => 3, height => 4).describe;
```

🦋 Puedes encontrar el código fuente en el archivo [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Salida

```
area is 12
```

## Comentarios

1. El método `area` lee los propios `width` y `height` del objeto a través de sus accesores. Después los multiplica. Para un rectángulo de `3` por `4`, el resultado es `12`.

1. El método `describe` no repite el cálculo. En su lugar, llama a `self.area` para ejecutar el método `area` sobre el mismo objeto. Después reutiliza el resultado. De esta forma, construyes un comportamiento mayor con métodos más pequeños. Así cada método tiene una sola tarea.

{% include nav.html %}
