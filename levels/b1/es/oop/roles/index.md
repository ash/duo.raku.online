---
title: Roles
translations_gpt:
---

{% include menu.html %}

Un _rol_ es una pieza de comportamiento, y a veces de datos, que varias clases pueden compartir. La herencia dice que una clase _es_ una clase de otra clase. En cambio, un rol describe algo que una clase _sabe hacer_.

Defines un rol con la palabra clave `role`, de la misma forma que una clase. Para dárselo a una clase, usas el rasgo `does`:

```raku
role Greet {
    method hello {
        'Hello from ' ~ self.name;
    }
}

class Person does Greet {
    has $.name;
}
```

La clase `Person` tiene ahora el método `hello` del rol. Funciona como si estuviera escrito en la propia clase:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Si una clase asume un rol, Raku puede ver que tiene ese rol:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Fíjate en que el método `hello` del rol usa `self.name`. Pero el rol mismo no tiene ningún atributo `name`. No pasa nada. El método se ejecuta como parte de la clase que compone el rol, sea cual sea. Y esa clase aporta `name`. El tema siguiente muestra que una clase puede tener varios roles a la vez.

{% include nav.html %}
