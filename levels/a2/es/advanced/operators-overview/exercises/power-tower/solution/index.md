---
title: 'Solution: Torre de potencias'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say 2 ** 2 ** 3;
```

🦋 Puedes encontrar el código fuente en el archivo [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Salida

```
256
```

## Comentarios

1. `**` es asociativo por la derecha. Así, la expresión se agrupa como `2 ** (2 ** 3)`.

1. Eso es `2 ** 8`, y el resultado es `256`. No es `(2 ** 2) ** 3`. Eso daría `64`.

{% include nav.html %}
