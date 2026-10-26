---
title: 'Solución: Una fórmula en la clase'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Puedes encontrar el código fuente en el archivo [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Salida

```
314
```

## Comentarios

1. El método no usa ningún atributo. Solo trabaja con su parámetro `$r`. Así que puedes llamarlo sobre la clase misma. No necesitas crear un objeto antes.

1. `Geometry.circle-area(10)` llama al método sobre el objeto de tipo. Pasa `10` al método. El resultado es `π * 10 * 10`. Después de redondear, es `314`.

{% include nav.html %}
