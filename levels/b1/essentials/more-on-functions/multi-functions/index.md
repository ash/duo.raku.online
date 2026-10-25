---
title: Multi-functions
---

{% include menu.html %}

Raku has _multiple dispatch_ based on the function signature. It lets you create functions with the same name but different types of input data. Use the `multi` declarator for each variant of the function.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

It is fine to leave out `sub` after `multi`.

When there are two variants of the same function, the compiler performs multiple dispatch. Its choice depends on which arguments it sees in the function call. Compare these two calls:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

The first call runs the variant with integer parameters. The second call runs the other variant, which expects two strings.

## Literal parameters

An interesting use of multi-functions is variants with literal values as parameters. Look at the following two variants:

```raku
multi sub f(42) {say 'This is the answer'}
multi sub f($x) {say "$x is not the answer"}
```

The first variant runs only when you call the function with exactly 42. In all other cases, Raku uses the second variant. It does not matter in which order these functions are defined.

```raku
f(10); # 10 is not the answer
f(42); # This is the answer
```

{% include nav.html %}
