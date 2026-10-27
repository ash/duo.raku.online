---
title: 'Solución: Un rombo de clases'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class A {
}

class B is A {
}

class C is A {
}

class D is B is C {
}

say D.^mro.map(*.^name);
```

🦋 Puedes encontrar el código fuente en el archivo [diamond-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/diamond-mro.raku).

## Salida

```
(D B C A Any Mu)
```

## Comentarios

1. `D` hereda de dos padres a la vez: `class D is B is C` nombra a cada uno con su propio `is`. Esto es herencia múltiple. Juntos, `A`, `B`, `C` y `D` forman un *rombo*. Hay dos caminos desde `D` hasta el antepasado común `A`.

1. `.^mro` convierte el rombo en un solo orden de búsqueda, en línea recta. Primero va `D`, después sus padres `B` y `C` en el orden en que los escribiste. Después va el `A` común, y por último `Any` y `Mu`.

1. Tanto `B` como `C` llevan a `A`. Aun así, el tipo `A` aparece solo **una vez**, y solo después de los dos. Ese es el sentido de un orden de resolución de métodos. Cada tipo se visita exactamente una vez. Y un padre nunca va antes que una hija que hereda de él. Así que Raku siempre encuentra un método de `B` antes que el que sobrescribe en `A`.

{% include nav.html %}
