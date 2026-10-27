---
title: 'Un aviso con `note`'
translations_gpt:
---

{% include menu.html %}

## Problema

Un programa trabaja con un valor. El valor es negativo. Si el valor es menor que cero, manda un aviso al error estándar. Usa `note` para eso. Después manda el resultado real a la salida estándar con `say`. El resultado es el valor absoluto del número. Es el número sin su signo menos. Usa el valor `-3`.

## Ejemplo

Ves las dos líneas en la pantalla:

```
Warning: the value is negative
3
```

Aquí tiramos el error estándar. Solo queda el resultado:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
