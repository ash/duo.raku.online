---
title: Adding a role to an object
---

{% include menu.html %}

A role does not have to be built into a class. You can also give one to an object that already exists, with the `but` operator. It mixes the role into a single object at run time. Then it returns a new object that has the role:

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

Only `$loud` got the role. The `Greeter` class and all other `Greeter` objects stay the same. So `$quiet` still greets in the normal way. Sometimes the role and the class both define a method with the same name. In this case, the role’s version wins. And `callsame` calls the method that it overrode. Here, this is the original `greet` from `Greeter`. Its result is then changed to upper case.

An object with a role mixed in counts as doing that role:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` leaves the original object as it was and gives you a new one. If you want to change an existing object itself, use the `does` operator instead:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

When you mix roles into single objects, you decide which extra behaviour each object gets. You do not have to define a separate class for every combination.

{% include nav.html %}
