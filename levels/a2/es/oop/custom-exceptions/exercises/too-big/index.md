---
title: Demasiado grande
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una clase de excepción personalizada `TooBig`. Es una clase para tus propios errores. Hereda de `Exception`. Tiene dos atributos, `value` y `limit`. Su método `message` debe devolver `Value <value> exceeds the limit of <limit>`.

Después escribe un bucle sobre los valores `30`, `99` y `60`. El límite es `50`. Lanza una `TooBig` solo cuando un valor es mayor que el límite. Añade un phaser `CATCH` con `when TooBig`. Este phaser imprime el mensaje **y** una segunda línea. Para esta línea, lee directamente el atributo `limit` de la excepción. La segunda línea es `Try a value up to <limit>.`. Para un valor dentro del límite, simplemente imprime que todo va bien.

Ves que solo los números que fallan reciben una excepción. Los otros números pasan sin problema. En los dos casos, el bucle sigue.

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
