---
title: Metamétodos
translations_gpt:
---

{% include menu.html %}

Un _metamétodo_ se llama con `.^` en lugar de con `.`. El `.method` ordinario ejecuta un método del objeto. Pero `.^method` llama a un método sobre el **metaobjeto** del objeto. Así que pregunta por el tipo en lugar de actuar como el tipo.

Ya has visto `.^name`, que devuelve el nombre del tipo:

```raku
say 42.^name; # Int
```

Otros metamétodos miran la estructura de un tipo. `.^attributes` enumera sus atributos, y `.^find_method` te dice si un método existe:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` devuelve el _method resolution order_. Es la cadena de tipos que Raku recorre, en orden, para encontrar un método. Es la línea de herencia de una clase:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` hereda de `A`, y al final todo tipo hereda de `Any` y `Mu`. Así que Raku busca un método de un `B` exactamente por ese camino. Estos metamétodos convierten la estructura de tus tipos en datos. Puedes consultar estos datos en tiempo de ejecución.

{% include nav.html %}
