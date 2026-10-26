---
title: Planificar dos verificaciones
translations_gpt: true
---

{% include menu.html %}

## Problema

Escribe un archivo de pruebas. Usa `plan`, no `done-testing`. Con `plan`, di al principio que el archivo tiene exactamente dos comprobaciones. Haz estas dos comprobaciones:

1. Con `is-deeply`, comprueba que la lista `3, 1, 2` da `[1, 2, 3]` después de ordenarla.
1. Con `is`, comprueba que `10 % 3` es igual a `1`.

Escribe tu propia descripción corta para cada comprobación.

## Ejemplo

Supón que las descripciones son `sorted` y `remainder`. Entonces el programa imprime:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
