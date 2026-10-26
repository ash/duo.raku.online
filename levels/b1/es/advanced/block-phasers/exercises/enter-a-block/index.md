---
title: Entrar en un bloque
---

{% include menu.html %}

## Problema

`FIRST` se ejecuta solo una vez, pero un phaser `ENTER` se ejecuta *cada vez* que se entra en el bloque. Y un bucle entra de nuevo en su cuerpo en cada vuelta.

Escribe un bucle sobre `1..2`. Dentro del bucle, pon un phaser `ENTER` que imprima `--entering`. Añade también una sentencia normal que imprima `body` con el número actual. Fíjate en que `--entering` aparece una vez en cada vuelta del bucle.

## Ejemplo

El programa imprime:

```
--entering
body 1
--entering
body 2
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
