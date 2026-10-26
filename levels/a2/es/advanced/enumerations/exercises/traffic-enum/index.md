---
title: Semáforos
translations_gpt:
---

{% include menu.html %}

## Problema

Define un enum `Light` con las constantes `red`, `amber` y `green`. Mantenlas en este orden. Declara una variable con el enum como tipo: `my Light $current`. Dale el valor `red`. Imprime la luz y el número que hay detrás. Usa la forma `red is 0`.

Luego **cambia la luz dos veces**. Primero, dale a `$current` el valor `amber`. Luego dale el valor `green`. Después de cada cambio, imprímela de la misma manera. Así la luz va `red` → `amber` → `green`.

Quizás piensas que `$current++` pasa a la siguiente luz por sí solo. Pruébalo y mira qué pasa.

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
