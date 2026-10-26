---
title: Un map con dos puntos
---

{% include menu.html %}

## Problema

Aquí tienes una expresión. Duplica los números del `1` al `10`. Después se queda solo con los números mayores que `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Cambia el código. La llamada al método `grep` debe usar la forma con dos puntos, no paréntesis. No cambies el resto de la cadena. Recuerda: la forma con dos puntos toma el resto de la sentencia. Así que solo la última llamada de una cadena puede usarla.

## Ejemplo

El programa imprime:

```
(12 14 16 18 20)
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
