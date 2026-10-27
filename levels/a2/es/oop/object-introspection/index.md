---
title: Introspección de objetos
translations_gpt:
---

{% include menu.html %}

En la [sección sobre contenedores](/es/advanced/containers), usaste `.^name`. Con él, le preguntaste a un valor por su tipo. Las mismas metallamadas `.^` también funcionan con clases y objetos. Con ellas, puedes ver sus nombres y sus atributos. También puedes ver su lugar en el árbol de clases.

Un metamétodo es un método que llamas con `.^`. El metamétodo `.^name` devuelve el nombre de la clase:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

El metamétodo `.^attributes` da la lista de los atributos de la clase. Para cada atributo, ves su tipo. También ves su nombre privado interno. Es la forma `$!`. La conociste con los [atributos privados](/es/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspección significa que preguntas a un objeto por sí mismo. Es útil para herramientas que trabajan con cualquier clase de objeto. Por ejemplo, una herramienta puede imprimir cada atributo de un objeto. No necesita saber antes la clase del objeto. El tema siguiente trata de la cadena de herencia de una clase. Es la línea de sus clases padre.

{% include nav.html %}
