---
title: Una sección Pod
translations_gpt: true
---

{% include menu.html %}

## Problema

Con `$=pod`, un programa puede entrar en su propia documentación. Escribe un bloque `=begin pod` … `=end pod`. Pon dentro un encabezado de nivel superior y un párrafo. Luego toma el primer bloque Pod con `$=pod[0]`. Imprime cuántas partes tiene dentro. El encabezado y el párrafo son dos partes.

## Ejemplo

El programa imprime:

```
2
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
