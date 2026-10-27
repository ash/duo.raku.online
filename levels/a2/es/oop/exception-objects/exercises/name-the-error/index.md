---
title: Nombre el error
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe una subrutina `risky`. Hace `die 'sub failed'`. Después llama a `risky` dentro de un bloque con un phaser `CATCH`. Primero, el `CATCH` imprime el nombre del tipo de la excepción, con `.^name`. Después imprime su mensaje, con `.message`. Esto muestra una cosa más sobre `CATCH`. También maneja las excepciones del código al que el bloque *llama*. El `die` no tiene que estar en el propio bloque.

## Ejemplo

El programa imprime:

```
X::AdHoc
sub failed
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
