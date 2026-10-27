---
title: Introspección de objetos
translations_gpt:
---

{% include menu.html %}

En la [sección sobre contenedores](/es/advanced/containers), usaste `.^name` para preguntarle a un valor por su tipo. Con las mismas metallamadas `.^`, puedes mirar dentro de una clase y de sus objetos. Puedes ver sus nombres, sus atributos y su lugar en una jerarquía de clases.

El metamétodo `.^name` devuelve el nombre de la clase:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

El metamétodo `.^attributes` enumera los atributos de la clase. Ves cada uno con su tipo y su nombre privado interno. Es la forma `$!` que conociste con los [atributos privados](/es/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

La introspección es útil para herramientas que trabajan con cualquier clase de objeto. Por ejemplo, una herramienta así puede imprimir todos los atributos de un objeto. No necesita conocer antes la clase. El tema siguiente muestra cómo ver la cadena de herencia de una clase.

{% include nav.html %}
