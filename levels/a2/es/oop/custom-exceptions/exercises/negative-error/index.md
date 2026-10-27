---
title: Un error de número negativo
translations_gpt:
---

{% include menu.html %}

## Problema

Crea una clase de excepción personalizada `Negative`. Es una clase para tus propios errores. Hereda de `Exception`. Tiene un atributo `n`. Su método `message` devuelve `<n> is negative`.

Escribe una subrutina `check($n)`. Si su argumento es menor que cero, lanza una `Negative`. Esta `Negative` guarda la `n`. Si no, la subrutina devuelve el argumento. Después llama a `check(-5)` dentro de un bloque. Añade un phaser `CATCH` con `when Negative`. Este phaser imprime el mensaje de la excepción.

Al final, después del bloque, lanza otra `Negative`. Su `n` es `-10`. Ahí no hay ningún `CATCH` para capturarla. Esto muestra qué pasa entonces. La excepción termina el programa.

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
