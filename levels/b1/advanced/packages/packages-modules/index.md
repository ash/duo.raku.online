---
title: Packages and modules
---

{% include menu.html %}

The `package` keyword creates a namespace. Everything declared inside it with `our` becomes part of that namespace. From outside, you can reach these names through the package name and the `::` separator:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

You reach the variable as `$Maths::pi`. It has the sigil, then the package name, then the variable name. A subroutine is called as `Maths::double(...)`.

Both `package` and `module` create a namespace, but they differ in what else they do. A `module` is the usual choice for reusable code. A plain `package` is just the namespace, with nothing extra. A `class`, which you will meet in [the next part](/oop), also creates a namespace. On top of that, it adds everything you need for object-oriented programming.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

So `module` gives you the same namespace that a plain `package` gives. Which one you choose depends mostly on what you want to do. Use `module` for libraries and `package` for a simple namespace. Later, when you reach objects, use `class` for types.

{% include nav.html %}
