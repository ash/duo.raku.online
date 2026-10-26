---
title: Clausura sobre lo externo
translations_gpt:
---

{% include menu.html %}

## Problema

Una subrutina anidada es una *clausura*. Puede ver las variables de la subrutina que la rodea. Escribe una subrutina `greet($name)`. Dentro de ella, define una función auxiliar `message`. La función auxiliar **no** toma argumentos. Devuelve `"Hello, $name!"`. Toma `$name` directamente de `greet`, que la rodea. Dentro de `greet`, imprime el resultado de `message`. Después llama a `greet('Anna')`.

## Ejemplo

El programa imprime:

```
Hello, Anna!
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
