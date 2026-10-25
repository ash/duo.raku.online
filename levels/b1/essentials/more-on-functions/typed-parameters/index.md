---
title: Typed parameters of functions
---

{% include menu.html %}

In Raku, you can restrict function parameters to a type. This is very similar to [typed variables](/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Now the function requires its arguments to be integers.

```raku
say add(10, 20);
# say add(pi, e); # Error
```

Passing a value of any type other than `Int` causes a compile-time error.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Note that Raku will not convert the types automatically here. In other cases, it can do such a conversion.

```raku
# say add('3', '4'); # Error
say '3' + '4'; # OK and is 7
```

%%tipblock
## How to know if it is a compile-time error
If the error message starts with `===SORRY!=== Error while compiling`, the error happened at compile time.
%%/tipblock

{% include nav.html %}
