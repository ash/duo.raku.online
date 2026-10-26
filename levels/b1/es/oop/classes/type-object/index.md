---
title: Objetos de tipo e instancias
translations_gpt:
---

{% include menu.html %}

El nombre de una clase, como `Dog`, significa el _objeto de tipo_ de la clase. El objeto de tipo representa al tipo mismo. No es ningún objeto concreto de ese tipo. Una _instancia_, que creas con `new`, es un objeto real.

Raku puede ver la diferencia entre los dos. El método `defined` devuelve `False` para un objeto de tipo y `True` para una instancia:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Un objeto de tipo cuenta como _no definido_, porque no tiene datos reales. Solo describe un tipo. Una instancia está _definida_, porque es un objeto real.

Con `WHAT`, los dos muestran el mismo tipo. Ya conociste `WHAT` en la [sección sobre contenedores](/es/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku muestra un tipo entre paréntesis, como en `(Dog)`. Así que `Dog` y `Dog.new` tienen el mismo tipo, `Dog`. Pero hay una diferencia. `Dog` es el tipo mismo, y `Dog.new` es un objeto de ese tipo.

{% include nav.html %}
