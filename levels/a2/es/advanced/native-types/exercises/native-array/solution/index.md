---
title: 'Solution: Un array nativo'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Escribe el tipo nativo con tamaño `uint8` antes del array `@`. Entonces Raku guarda cada elemento en un byte. Este byte es sin signo: no tiene signo menos. Un array así ocupa poca memoria. Esto es bueno para datos binarios.

1. Cada *elemento* tiene un límite, `0..255`. Después de este límite, los valores dan la vuelta. Pero el límite no es para la suma de los elementos. `.sum` pone el total en un `Int` normal. Así que `100 + 200 + 255` da el `555` completo.

{% include nav.html %}
