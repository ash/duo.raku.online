---
title: Nombre el error
translations_gpt:
---

{% include menu.html %}

## Problema

Escribe una subrutina `risky` que haga `die 'sub failed'`. Después llámala desde dentro de un bloque que tenga un phaser `CATCH`. El `CATCH` debe imprimir el nombre del tipo de la excepción con `.^name`. Después debe imprimir su mensaje con `.message`. Esto muestra que `CATCH` maneja las excepciones del código al que el bloque *llama*. El `die` no tiene que estar escrito directamente en el bloque.

## Ejemplo

El programa imprime:

```
X::AdHoc
sub failed
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
