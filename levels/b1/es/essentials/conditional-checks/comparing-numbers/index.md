---
title: Comparación de números
---

{% include menu.html %}

Para comparar dos números, usa los siguientes operadores. Si conoces otros lenguajes de programación, todos son bastante claros.

`==` | Igual
`!=` | No igual
`<` | Menor que
`<=` | Menor o igual que
`>` | Mayor que
`>=` | Mayor o igual que

## Aproximadamente igual

Además de los operadores estándar, Raku añade uno más: el operador de aproximadamente igual `=~=`. Comprueba si dos números son casi iguales. El resultado es `True` si los dos números están relativamente cerca uno del otro. La diferencia relativa no debe ser mayor que el valor incorporado `$*TOLERANCE`. Este valor es `1e-15`.

## Versiones Unicode

Algunos de los operadores de arriba también tienen versiones en Unicode:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Ejemplos

Aquí tienes algunos ejemplos de cómo comparar números con estos operadores:

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

Ten en cuenta que `1.000000000000000000000001` es un número `Rat`. Por eso, la comparación con el número cercano `1.000000000000000000000002` mantiene toda la precisión. El último ejemplo, con `2e17`, trabaja con números `Num`. Su precisión es limitada.

{% include nav.html %}
