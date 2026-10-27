---
title: 'Solución: El orden de resolución de métodos'
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

1. `.^mro` devuelve la cadena de tipos que Raku recorre cuando busca un método.

1. La cadena sigue la línea de herencia paso a paso. Primero va `C`, después su padre `B`, y después `A`, el padre de `B`. Al final van `Any` y `Mu`, porque todo tipo termina con ellos. Con una jerarquía más profunda, la lista simplemente es más larga.

{% include nav.html %}
