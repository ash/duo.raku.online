---
title: 'Un aviso con `note`'
translations_gpt:
---

{% include menu.html %}

## Problema

Un programa trabaja con un valor, y el valor resulta ser negativo. Si el valor es menor que cero, usa `note` para mandar un aviso al error estándar. Usa `say` para mandar el resultado real, el valor absoluto, a la salida estándar. Usa el valor `-3`.

## Ejemplo

En la pantalla aparecen ambas líneas:

```
Warning: the value is negative
3
```

Si descartas el error estándar, solo queda el resultado:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
