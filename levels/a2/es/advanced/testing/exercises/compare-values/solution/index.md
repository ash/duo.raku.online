---
title: 'Solution: Comparar valores'
translations_gpt: true
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
use Test;

is 'a'.uc, 'A', 'uppercase';

done-testing;
```

🦋 Puedes encontrar el código fuente en el archivo [compare-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/compare-values.raku).

## Salida

```
ok 1 - uppercase
1..1
```

## Comentarios

1. `is` compara dos valores. `'a'.uc` es el valor que obtienes. `'A'` es el valor que esperas.

1. Los valores son iguales, así que la prueba pasa. Si la prueba falla, `is` imprime los dos valores.

{% include nav.html %}
