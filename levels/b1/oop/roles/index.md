---
title: Roles
---

{% include menu.html %}

A _role_ is a piece of behaviour, and sometimes data, that several classes can share. Inheritance says that a class _is a_ kind of another class. A role, on the other hand, describes something that a class _can do_.

You define a role with the `role` keyword, in the same way as a class. To give it to a class, you use the `does` trait:

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

The `Person` class now has the `hello` method from the role. It works as if you wrote it in the class itself:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

If a class does a role, Raku can see that it has this role:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Note that the role’s `hello` method uses `self.name`. But the role itself has no `name` attribute. That is fine. The method runs as part of whatever class composes the role. And that class provides `name`. The next topic shows that a class can have several roles at a time.

{% include nav.html %}
