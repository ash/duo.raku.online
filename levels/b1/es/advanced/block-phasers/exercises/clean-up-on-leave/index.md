---
title: Limpiar al salir
---

{% include menu.html %}

## Problema

La verdadera fuerza de `LEAVE` es que se ejecuta *sin importar cómo* se sale del bloque. Esto incluye un `return` anticipado.

Escribe una subrutina `work` cuyo cuerpo empiece con un phaser `LEAVE` que imprima `Cleanup`. Después, todavía dentro de la subrutina, imprime `Working` y haz `return` enseguida. Pon una línea `say 'never reached'` después del `return`. Llama a la subrutina. El `return` anticipado salta la última línea, pero `Cleanup` se sigue imprimiendo.

## Ejemplo

El programa imprime:

```
Working
Cleanup
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
