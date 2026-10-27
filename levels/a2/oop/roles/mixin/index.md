---
title: Adding a role to an object
---

{% include menu.html %}

You do not have to build a role into a class. You can also give a role to an object that already exists. For this, use the operator `but`. It mixes the role into one single object. This happens while the program runs. Then `but` returns a new object with the role:

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

Only `$loud` got the role. The class `Greeter` and all other `Greeter` objects stay the same. So `$quiet` still greets in the normal way. Sometimes the role and the class have methods with the same name. Then the version from the role wins. And `callsame` calls the other method, which the role overrides. Here, it is the original `greet` from `Greeter`. Then its result is changed to capital letters.

An object can get a role in this way. Then it counts as doing this role:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` does not change the original object. It gives you a new object. Maybe you want to change the object itself. Then use the operator `does` instead:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

You can mix roles into single objects. So you decide for each object what extra behaviour it gets. You do not need a separate class for every combination.

{% include nav.html %}
