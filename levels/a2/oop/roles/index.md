---
title: Roles
---

{% include menu.html %}

A _role_ is a set of methods. Sometimes it also has data. Several classes can share one role. Inheritance says that a class _is a_ kind of another class. A role is different. It describes something that a class _can do_.

You make a role with the keyword `role`. It looks much like a class. To give a role to a class, use the trait `does`:

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

Now the class `Person` has the method `hello` from the role. It works just like a method in the class itself:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

A class can do a role. Then Raku knows that the class has this role:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Look at the method `hello` in the role. It uses `self.name`. But the role itself has no attribute `name`. This is not a problem. The method runs as part of the class that composes the role. To compose a role means to take it into the class. And that class has the attribute `name`. The next topic shows more. A class can have more than one role at a time.

{% include nav.html %}
