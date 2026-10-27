---
title: Metamétodos
translations_gpt:
---

{% include menu.html %}

Llamas a un _metamétodo_ con `.^`, no con `.`. Un `.method` normal ejecuta un método del objeto. Un `.^method` es distinto. Llama a un método del **metaobjeto** del objeto. Un metaobjeto es un objeto que describe un tipo. Así que la llamada pregunta por el tipo. No actúa como el tipo.

Ya conoces `.^name`. Devuelve el nombre del tipo:

```raku
say 42.^name; # Int
```

Otros metamétodos muestran cómo está hecho un tipo. `.^attributes` da la lista de sus atributos. `.^find_method` te dice si un método existe:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` devuelve el _method resolution order_. Es una cadena de tipos. Raku busca un método en cada uno de ellos, en este orden. Es la línea de herencia de una clase:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` hereda de `A`. Al final, todo tipo hereda de `Any` y `Mu`. Llamas a un método sobre un `B`. Entonces Raku lo busca exactamente por este camino. Estos metamétodos convierten tus tipos en datos. Estos datos muestran cómo están hechos los tipos. Puedes preguntar por ellos mientras el programa se ejecuta.

{% include nav.html %}
