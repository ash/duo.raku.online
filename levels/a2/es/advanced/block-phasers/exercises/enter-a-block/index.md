---
title: Entrar en un bloque
---

{% include menu.html %}

## Problema

`FIRST` se ejecuta solo una vez. Un phaser `ENTER` es diferente. Se ejecuta *cada vez* que el programa entra en el bloque. Un bucle entra en su cuerpo otra vez en cada vuelta.

Haz un bucle sobre `1..2`. Dentro del bucle, pon un phaser `ENTER`. Imprime `--entering`. Pon allí también una sentencia normal. Imprime `body` y el número actual. Ves `--entering` una vez en cada vuelta.

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
