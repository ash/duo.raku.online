---
title: 'Solution: Crear un alias de un array'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Code

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Puedes encontrar el código fuente en el archivo [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Salida

```
[10 20 30 40]
```

## Comentarios

1. Mira la vinculación `@alias := @original`. Convierte `@alias` en un segundo nombre para el mismo contenedor de array. No copia el array.

1. Esta vez, el programa cambia el array con `@original`. Cambia la estructura: `push` agrega un elemento. Los dos nombres son del mismo contenedor. Por eso `@alias` también ve el nuevo elemento. Los dos nombres funcionan exactamente igual. Puedes leer o cambiar el array con cualquiera de los dos.

{% include nav.html %}
