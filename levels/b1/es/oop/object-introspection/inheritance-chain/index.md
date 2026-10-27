---
title: La cadena de herencia
translations_gpt:
---

{% include menu.html %}

Si una clase hereda de otra, puedes pedir su cadena completa de tipos. El metamétodo `.^mro` devuelve esta cadena. El nombre viene de _method resolution order_. Es el orden en que Raku busca un método.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lee la lista desde la izquierda. Un `Dog` es primero él mismo, después un `Animal` (su padre), y después `Any` y `Mu`. Estos dos tipos están arriba del todo, y todo objeto de Raku hereda de ellos. Para una llamada a un método sobre un `Dog`, Raku recorre esta lista de izquierda a derecha. Usa el primer método adecuado que encuentra. Esa es exactamente la razón por la que el método de una hija sobrescribe el método del padre. La hija aparece antes en la cadena.

Si una clase no tiene ningún padre que nombres tú mismo, la cadena es más corta. Solo tiene la clase misma, seguida de `Any` y `Mu`.

{% include nav.html %}
