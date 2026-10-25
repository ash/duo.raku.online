---
title: Multi-functions
---

{% include menu.html %}

Raku has _multiple dispatch_ based on the signature of a function. With it, several functions can have the same name. But they take different types of input data. Write the declarator `multi` before each variant of the function.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

You can leave out `sub` after `multi`.

Here, the same function has two variants. The compiler looks at the arguments in each call. Then it chooses the right variant. This is multiple dispatch. Compare these two calls:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

The first call runs the variant with integer parameters. The second call runs the second variant. That variant expects two strings.

## Literal parameters

Here is an interesting case. A variant can have a literal value as a parameter. A literal is a value in the code, like `42`. Look at these two variants:

```raku
multi sub f(42) {say 'This is the answer'}
multi sub f($x) {say "$x is not the answer"}
```

Raku runs the first variant only when the argument is exactly 42. In all other cases, Raku runs the second variant. The order of the two definitions does not matter.

```raku
f(10); # 10 is not the answer
f(42); # This is the answer
```

{% include nav.html %}
