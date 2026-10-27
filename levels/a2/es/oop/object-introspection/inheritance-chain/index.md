---
title: La cadena de herencia
translations_gpt:
---

{% include menu.html %}

Una clase puede heredar de otra clase. Entonces puedes pedir la cadena completa de tipos. La clase está construida sobre estos tipos. El metamétodo `.^mro` devuelve esta cadena. El nombre significa _method resolution order_. Raku busca un método en este orden.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lee la lista desde la izquierda. Primero, un `Dog` es él mismo. Después es un `Animal`, su padre. Después es `Any` y `Mu`. Todo objeto de Raku hereda de estos dos tipos. Están arriba del todo. Cuando llamas a un método sobre un `Dog`, Raku recorre esta lista. Va de izquierda a derecha. Usa el primer método adecuado. Esto explica la sobrescritura de métodos. La hija va antes en la cadena. Así que su método gana al método del padre.

A veces una clase no tiene un padre con `is`. Entonces la cadena es más corta. Solo tiene la clase misma, y después `Any` y `Mu`.

{% include nav.html %}
