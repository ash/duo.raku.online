---
title: 'Solución: Un rombo de clases'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `D` hereda de dos padres a la vez. `class D is B is C` tiene un `is` para cada padre. Esto se llama herencia múltiple. Las clases `A`, `B`, `C` y `D` forman un *rombo*. Hay dos caminos desde `D` hasta `A`. `A` es el padre de `B` y también de `C`.

1. `.^mro` convierte el rombo en una sola línea. Raku busca en este orden. `D` va primero. Después van sus padres, `B` y `C`. Van en el orden del código. Después va `A`, el padre común. Al final van `Any` y `Mu`.

1. `B` y `C` llevan los dos a `A`. Pero el tipo `A` está en la lista solo **una vez**. Y va después de los dos. Este es el objetivo de un orden de resolución de métodos. Raku visita cada tipo exactamente una vez. Un padre nunca va antes que su hija. Así que Raku siempre encuentra primero un método de `B`. Lo encuentra antes que el método de `A` que sobrescribe.

{% include nav.html %}
