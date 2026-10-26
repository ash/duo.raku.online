---
title: Semáforos
translations_gpt:
---

{% include menu.html %}

## Problema

Define un enum `Light` con las constantes `red`, `amber` y `green`, en este orden. Declara una variable con el enum como tipo, `my Light $current`, y dale el valor `red`. Imprime la luz y el número que hay detrás, así: `red is 0`.

Luego **cambia la luz un par de veces**. Asigna `amber` a `$current`, y luego `green`. Después de cada cambio, imprímela de la misma manera. Así recorres `red` → `amber` → `green`.

Podrías pensar que `$current++` pasa a la siguiente luz por sí solo. Pruébalo y mira qué pasa.

## Ejemplo

El programa imprime:

```
red is 0
amber is 1
green is 2
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
