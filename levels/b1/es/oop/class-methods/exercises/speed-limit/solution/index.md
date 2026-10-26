---
title: 'Solución: Una fórmula en la clase'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El método no usa ningún atributo, solo su parámetro `$r`. Así que puedes llamarlo sobre la clase misma, sin crear antes un objeto.

1. `Geometry.circle-area(10)` llama al método sobre el objeto de tipo y le pasa `10`. El resultado es `π * 10 * 10`, que da `314` después de redondear.

{% include nav.html %}
