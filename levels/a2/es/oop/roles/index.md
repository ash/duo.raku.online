---
title: Roles
translations_gpt:
---

{% include menu.html %}

Un _rol_ es un conjunto de métodos. A veces también tiene datos. Varias clases pueden compartir un rol. La herencia dice que una clase _es_ una clase de otra clase. Un rol es distinto. Describe algo que una clase _sabe hacer_.

Creas un rol con la palabra clave `role`. Se parece mucho a una clase. Para dar un rol a una clase, usa el rasgo `does`:

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

Ahora la clase `Person` tiene el método `hello` del rol. Funciona igual que un método de la propia clase:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Una clase puede asumir un rol. Entonces Raku sabe que la clase tiene este rol:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Mira el método `hello` del rol. Usa `self.name`. Pero el rol mismo no tiene ningún atributo `name`. Esto no es un problema. El método se ejecuta como parte de la clase que compone el rol. Componer un rol significa meterlo en la clase. Y esa clase tiene el atributo `name`. El tema siguiente muestra algo más. Una clase puede tener más de un rol a la vez.

{% include nav.html %}
