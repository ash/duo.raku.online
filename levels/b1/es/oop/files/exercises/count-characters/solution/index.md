---
title: 'Solución: Cuente los caracteres'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
spurt 'data.txt', 'Raku';

say slurp('data.txt').chars;
```

🦋 Puedes encontrar el código fuente en el archivo [count-characters.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/count-characters.raku).

## Salida

```
4
```

## Comentarios

1. `spurt` escribe la cadena `Raku` en el archivo.

1. `slurp` la vuelve a leer como una cadena, y `.chars` cuenta sus caracteres. Hay cuatro.

1. Si miras dentro del archivo, de verdad verás solo los cuatro caracteres. No se añade ningún salto de línea.

{% include nav.html %}
