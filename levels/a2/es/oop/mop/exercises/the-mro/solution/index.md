---
title: 'Solución: El orden de resolución de métodos'
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

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Puedes encontrar el código fuente en el archivo [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Salida

```
(C B A Any Mu)
```

## Comentarios

1. `.^mro` devuelve una cadena de tipos. Raku recorre esta cadena para encontrar un método.

1. La cadena sigue la línea de herencia, paso a paso. Primero va `C`. Después va su padre, `B`. Después va `A`, el padre de `B`. Al final van `Any` y `Mu`. Todo tipo termina con ellos. Con más niveles de clases, la lista solo es más larga.

{% include nav.html %}
