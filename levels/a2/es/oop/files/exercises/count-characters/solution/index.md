---
title: 'Solución: Cuente los caracteres'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `slurp` lee el archivo como una cadena. `.chars` cuenta sus caracteres. Hay cuatro.

1. Mira el archivo. Solo ves estos cuatro caracteres. No hay ningún salto de línea al final.

{% include nav.html %}
