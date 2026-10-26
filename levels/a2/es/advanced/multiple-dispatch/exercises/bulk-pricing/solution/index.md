---
title: 'Solution: Precios por volumen'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El primer candidato tiene una cláusula `where`. Solo acepta cantidades de 10 o más. Así que la llamada `price(25)` va a este candidato.

1. El segundo candidato no tiene condición. Recibe todas las demás llamadas. Así que `price(3)` va allí.

{% include nav.html %}
