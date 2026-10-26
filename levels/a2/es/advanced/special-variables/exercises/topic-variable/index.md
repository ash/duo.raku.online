---
title: La variable de tema
translations_gpt: true
---

{% include menu.html %}

## Problema

`$_` es la variable *tópico*. Un bucle `for` le da cada elemento, uno tras otro. Algunas llamadas a métodos empiezan con un punto, como `.chars`. No hay nada antes del punto. Una llamada así trabaja sobre `$_`. Así que `.chars` significa `$_.chars`.

Recorre tres cadenas: `'apple'`, `'fig'` y `'cherry'`. Para cada cadena, imprime una línea así: `<palabra> has <n> letters`. Usa el tópico `$_` para la palabra. Para su longitud, usa la llamada `.chars`. Empieza con un punto. Mira cómo `$_` se convierte en cada cadena, una tras otra.

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
