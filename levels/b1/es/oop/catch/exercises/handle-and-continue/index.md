---
title: Maneje y continúe
translations_gpt:
---

{% include menu.html %}

## Problema

Recorre los tres elementos `ok`, `bad` y `ok`. Para cada elemento, ejecuta un bloque que imprima `processed <elemento>`. Pero cuando el elemento sea `bad`, el bloque debe hacer `die 'boom'`. Pon un phaser `CATCH` dentro del bloque. Debe informar de un elemento que falla como `skipped (<elemento>): <mensaje>`. Después el bucle pasa al elemento siguiente en lugar de detenerse.

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
