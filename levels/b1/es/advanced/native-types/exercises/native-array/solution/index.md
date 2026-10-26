---
title: 'Solution: Un array nativo'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Encuentra el programa en el archivo [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Salida

```
555
```

## Comentarios

1. El tipo nativo con tamaño `uint8` va antes del array `@`. Esto declara un array donde cada elemento es un solo byte sin signo. Ocupa poca memoria, lo cual es bueno para datos binarios.

1. El límite de desbordamiento `0..255` vale para cada *elemento*, pero no para su suma. `.sum` encapsula el total en un `Int` ordinario. Así que `100 + 200 + 255` da el `555` completo.

{% include nav.html %}
