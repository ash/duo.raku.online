---
title: 'Solución: Área del rectángulo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El método `area` lee el `width` y el `height` del objeto. Para esto usa sus accesores. Después los multiplica. Para un rectángulo de `3` por `4`, el resultado es `12`.

1. El método `describe` no hace este cálculo otra vez. Llama a `self.area`. Esto ejecuta el método `area` sobre el mismo objeto. Después `describe` usa su resultado. Así construyes un comportamiento más grande con métodos pequeños. Cada método tiene una sola tarea.

{% include nav.html %}
