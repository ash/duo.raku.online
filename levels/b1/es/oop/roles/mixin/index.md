---
title: Añadir un rol a un objeto
translations_gpt:
---

{% include menu.html %}

Un rol no tiene por qué estar incorporado en una clase. También puedes dárselo a un objeto que ya existe, con el operador `but`. Mezcla el rol en un único objeto en tiempo de ejecución. Después devuelve un objeto nuevo que tiene el rol:

```raku
role Loud {
    method greet {
        callsame().uc;
    }
}

class Greeter {
    method greet {
        'Hello';
    }
}

my $quiet = Greeter.new;
my $loud  = Greeter.new but Loud;

say $quiet.greet; # Hello
say $loud.greet;  # HELLO
```

Solo `$loud` ha recibido el rol. La clase `Greeter` y todos los demás objetos `Greeter` siguen igual. Así que `$quiet` sigue saludando de la forma normal. A veces el rol y la clase definen los dos un método con el mismo nombre. En ese caso, gana la versión del rol. Y `callsame` llama al método que ha sobrescrito. Aquí, es el `greet` original de `Greeter`. Después su resultado se pasa a mayúsculas.

Un objeto con un rol mezclado cuenta como un objeto que asume ese rol:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` deja el objeto original como estaba y te da uno nuevo. Si quieres cambiar el propio objeto que ya existe, usa en su lugar el operador `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Cuando mezclas roles en objetos concretos, decides qué comportamiento extra recibe cada objeto. No tienes que definir una clase aparte para cada combinación.

{% include nav.html %}
