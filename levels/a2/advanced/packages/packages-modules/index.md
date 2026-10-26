---
title: Packages and modules
---

{% include menu.html %}

The keyword `package` creates a namespace. Inside it, you can create things with `our`. They become part of the namespace. You can get to them from outside. Use the name of the package and the separator `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

You get the variable as `$Maths::pi`. First comes the sigil, then the package name, then the variable name. You call a subroutine as `Maths::double(...)`.

Both `package` and `module` create a namespace. But they also do different things. A `module` is the usual choice for code that you use again. A simple `package` is only the namespace, with nothing more. A `class` also creates a namespace. You will learn about classes in [the next part](/oop). A class also adds the tools for objects.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

So `module` gives you a namespace. A `package` alone gives you the same kind of namespace. Choose between them by what you want to do. Use `module` for libraries. Use `package` for just a namespace. Later, with objects, use `class` for types.

{% include nav.html %}
