---
title: 'Solution: Precios por volumen'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Puedes encontrar el código fuente en el archivo [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Salida

```
normal price
bulk price
```

## Comentarios

1. El primer candidato tiene una cláusula `where` que solo acepta cantidades de 10 o más. Así que la llamada `price(25)` va a él.

1. El segundo candidato no tiene condición, así que recoge todas las demás llamadas. Por eso `price(3)` va allí.

{% include nav.html %}
