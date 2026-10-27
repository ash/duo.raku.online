---
title: Un error de número negativo
translations_gpt:
---

{% include menu.html %}

## Problema

Define una clase de excepción personalizada llamada `Negative`. Hereda de `Exception` y tiene un atributo `n`. Su método `message` devuelve `<n> is negative`.

Escribe una subrutina `check($n)`. Cuando su argumento es menor que cero, lanza una `Negative` que lleva esa `n`. En caso contrario, devuelve el argumento. Después, dentro de un bloque, llama a `check(-5)`. Usa un phaser `CATCH` con `when Negative` para imprimir el mensaje de la excepción.

Por último, después del bloque, lanza otra `Negative` con `n` igual a `-10`. Ningún `CATCH` protege ese lugar. Esto muestra que una excepción así termina el programa.

## Ejemplo

El programa imprime:

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
