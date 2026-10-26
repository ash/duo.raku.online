---
title: Clausura sobre lo externo
translations_gpt:
---

{% include menu.html %}

## Problema

Una subrutina anidada es una *clausura*. Esto significa que puede ver las variables de la subrutina que la contiene. Escribe una subrutina `greet($name)` con una función auxiliar anidada `message` que **no** tome argumentos. La función auxiliar devuelve `"Hello, $name!"` y lee `$name` directamente de `greet`, que la rodea. Dentro de `greet`, imprime lo que devuelve `message`. Después llama a `greet('Anna')`.

## Ejemplo

El programa imprime:

```
Hello, Anna!
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
