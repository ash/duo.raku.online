---
title: Comparación de números
---

{% include menu.html %}

Usa estos operadores para comparar dos números. ¿Conoces otros lenguajes de programación? Entonces todos son muy claros para ti.

`==` | Igual
`!=` | No igual
`<` | Menor que
`<=` | Menor o igual que
`>` | Mayor que
`>=` | Mayor o igual que

## Aproximadamente igual

Raku tiene los operadores estándar. También añade uno más: `=~=`. Este operador comprueba si dos números son casi iguales. El resultado es `True` si los números están cerca. Raku compara la diferencia con el tamaño de los números. Esto da la diferencia relativa. No debe ser mayor que el valor incorporado `$*TOLERANCE`. Este valor es `1e-15`.

## Versiones Unicode

Algunos de estos operadores también tienen una forma en Unicode:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Ejemplos

Aquí tienes algunos ejemplos que comparan números:

```raku
say 10 == 10; # True
say 10 != 10; # False

say 15 < 10;  # False
say 10 <= 10; # True
say 16 > 10;  # True
say 10 >= 14; # False

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # True
say 2e17 + 1 =~= 2e17 + 100; # True
```

Ten en cuenta que `1.000000000000000000000001` es un número `Rat`. La expresión lo compara con un número muy cercano, `1.000000000000000000000002`. Con números `Rat`, aquí no pierdes precisión. Raku guarda todos los dígitos. El último ejemplo tiene `2e17`. Usa números `Num`. Su precisión es limitada. No pueden guardar todos los dígitos.

{% include nav.html %}
