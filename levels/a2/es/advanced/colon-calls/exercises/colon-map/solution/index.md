---
title: 'Solution: Un map con dos puntos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Encuentra el programa en el archivo [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Salida

```
(12 14 16 18 20)
```

## Comentarios

1. Solo `grep` puede usar la forma con dos puntos. Es la última llamada de la cadena. Los dos puntos hacen de `* > 10` su argumento. Es exactamente como `grep(* > 10)`. Todavía necesitamos imprimir el resultado. Así que ahora usamos `say` como función, no como método.

1. La llamada a `map` debe mantener sus paréntesis. Si escribes `.map: * * 2`, hay un problema. Los dos puntos toman también `.grep(* > 10)`. Se convierte en parte de los argumentos de `map`. Entonces la cadena se rompe.

{% include nav.html %}
