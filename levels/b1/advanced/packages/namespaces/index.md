---
title: Namespaces and our
---

{% include menu.html %}

The `our` declarator is what makes a name visible in its namespace. A variable declared with `my` is lexical, which means it is private to its block. A variable declared with `our` is also a package variable. You can reach it from outside through the `::` path:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` works because `count` was declared with `our`. But `$Counter::secret` would fail, because `secret` is lexical.

Namespaces can **nest**, that is, one can be inside another. A package inside a package gives a longer `::` path:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

The full name `$Outer::Inner::val` leads from the outer namespace into the inner one. From there, it leads to the variable. This is exactly how the standard library is organised: names like `IO::Socket::INET` are nested namespaces. Your own modules also group their parts under one top-level name in this way.

{% include nav.html %}
