---
title: La variable de tema
translations_gpt: true
---

{% include menu.html %}

## Problema

`$_` es la variable *tópico*. Un bucle `for` le asigna cada elemento, uno tras otro. Una llamada a método como `.chars` empieza con un punto y no tiene ningún objeto delante. Una llamada así trabaja sobre `$_`, así que `.chars` significa `$_.chars`.

Recorre las tres cadenas `'apple'`, `'fig'` y `'cherry'`. Para cada una de ellas, imprime una línea con la forma `<palabra> has <n> letters`. Usa el tópico `$_` para la palabra. Para su longitud, usa una llamada `.chars` con un punto al principio. Observa cómo `$_` se convierte en cada cadena, una tras otra.

## Ejemplo

El programa imprime:

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
