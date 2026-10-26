---
title: Limpiar al salir
---

{% include menu.html %}

## Problema

Lo mejor de `LEAVE` es esto. Se ejecuta *sin importar cómo* sale el programa del bloque. Se ejecuta incluso después de un `return` antes de tiempo.

Escribe una subrutina `work`. Su cuerpo empieza con un phaser `LEAVE`. El phaser imprime `Cleanup`. Después, todavía dentro de la subrutina, imprime `Working`. Luego usa `return` enseguida. Pon una línea `say 'never reached'` después del `return`. Llama a la subrutina. El `return` antes de tiempo salta la última línea. Pero el programa todavía imprime `Cleanup`.

## Ejemplo

El programa imprime:

```
Working
Cleanup
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
