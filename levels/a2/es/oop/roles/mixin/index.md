---
title: Añadir un rol a un objeto
translations_gpt:
---

{% include menu.html %}

No tienes que meter un rol dentro de una clase. También puedes dar un rol a un objeto que ya existe. Para esto, usa el operador `but`. Mezcla el rol en un solo objeto. Esto pasa mientras el programa se ejecuta. Después `but` devuelve un objeto nuevo con el rol:

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

Solo `$loud` recibió el rol. La clase `Greeter` y todos los demás objetos `Greeter` siguen igual. Así que `$quiet` todavía saluda de la forma normal. A veces el rol y la clase tienen métodos con el mismo nombre. Entonces gana la versión del rol. Y `callsame` llama al otro método, el que el rol sobrescribe. Aquí, es el `greet` original de `Greeter`. Después su resultado pasa a mayúsculas.

Un objeto puede recibir un rol de esta forma. Entonces cuenta como un objeto con este rol:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` no cambia el objeto original. Te da un objeto nuevo. Quizás quieres cambiar el objeto mismo. Entonces usa en su lugar el operador `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Puedes mezclar roles en objetos sueltos. Así decides para cada objeto qué comportamiento extra recibe. No necesitas una clase aparte para cada combinación.

{% include nav.html %}
