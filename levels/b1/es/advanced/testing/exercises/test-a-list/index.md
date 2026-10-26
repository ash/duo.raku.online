---
title: Planificar dos verificaciones
translations_gpt: true
---

{% include menu.html %}

## Problema

Escribe un archivo de pruebas que use `plan`, no `done-testing`. Con `plan`, indica al principio que el archivo tiene exactamente dos comprobaciones. Haz estas comprobaciones:

1. Con `is-deeply`, comprueba que al ordenar la lista `3, 1, 2` se obtiene `[1, 2, 3]`.
1. Con `is`, comprueba que `10 % 3` es igual a `1`.

Dale a cada comprobación una descripción corta que elijas tú mismo.

## Ejemplo

Si las descripciones son `sorted` y `remainder`, el programa imprime:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
