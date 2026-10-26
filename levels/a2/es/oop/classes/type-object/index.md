---
title: Objetos de tipo e instancias
translations_gpt:
---

{% include menu.html %}

Puedes escribir el nombre de una clase, como `Dog`. Este nombre significa el _objeto de tipo_ de la clase. El objeto de tipo representa al tipo mismo. No es uno de los objetos de este tipo. Una _instancia_ es otra cosa. La creas con `new`. Es un objeto real.

Raku ve la diferencia entre ellos. El método `defined` devuelve `False` para un objeto de tipo. Devuelve `True` para una instancia:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Un objeto de tipo no tiene datos reales. Solo describe un tipo. Así que Raku lo considera _no definido_. Una instancia es un objeto real. Así que está _definida_.

`WHAT` muestra el mismo tipo para los dos. Viste `WHAT` en la [sección sobre contenedores](/es/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku muestra un tipo entre paréntesis, como `(Dog)`. Así que `Dog` y `Dog.new` tienen el mismo tipo, `Dog`. Pero son cosas distintas. `Dog` es el tipo mismo. `Dog.new` es un objeto de este tipo.

{% include nav.html %}
