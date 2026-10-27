---
title: Demasiado grande
translations_gpt:
---

{% include menu.html %}

## Problema

Define una clase de excepción personalizada `TooBig`. Hereda de `Exception` y tiene dos atributos, `value` y `limit`. Su método `message` debe devolver `Value <value> exceeds the limit of <limit>`.

Después recorre los valores `30`, `99` y `60`, con un límite de `50`. Para cada valor, lanza una `TooBig` solo si el valor supera el límite. Usa un phaser `CATCH` con `when TooBig` que imprima el mensaje **y** una segunda línea. En esa línea, lee directamente el atributo `limit` de la excepción. Así imprime `Try a value up to <limit>.`. Un valor dentro del límite debe simplemente informar de que está bien.

Esto muestra que solo los números que fallan causan una excepción. Los demás números pasan directamente, y el bucle sigue en los dos casos.

## Ejemplo

El programa imprime:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
