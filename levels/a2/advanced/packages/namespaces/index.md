---
title: Namespaces and our
---

{% include menu.html %}

The word `our` makes something visible in its namespace. A variable with `my` is lexical. It is private to its block. A variable with `our` is also a package variable. You can get to it from outside through the `::` path:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` works. The variable `count` has `our`. But `$Counter::secret` fails. The variable `secret` is lexical.

Namespaces can **nest**. This means that one namespace is inside another. A package inside a package makes a longer `::` path:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

The full name `$Outer::Inner::val` is like a path. It goes from the outer namespace into the inner one. Then it goes to the variable. The standard library uses exactly this structure. Names like `IO::Socket::INET` are nested namespaces. Your own modules can work like this too. They keep all their parts under one top-level name.

{% include nav.html %}
