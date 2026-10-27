---
title: Maneje y continúe
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe un bucle sobre tres elementos: `ok`, `bad` y `ok`. Para cada elemento, ejecuta un bloque. El bloque imprime `processed <elemento>`. Pero para el elemento `bad`, hace `die 'boom'`. Pon un phaser `CATCH` dentro del bloque. Este phaser captura el error. Para un elemento que falla, imprime `skipped (<elemento>): <mensaje>`. Después el bucle pasa al elemento siguiente. No se detiene.

## Ejemplo

El programa imprime:

```
processed ok
skipped (bad): boom
processed ok
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
