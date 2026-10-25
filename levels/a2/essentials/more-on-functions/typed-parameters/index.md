---
title: Typed parameters of functions
---

{% include menu.html %}

In Raku, a function parameter can have a type. Then it only takes values of this type. This is very much like [typed variables](/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Now the arguments of the function must be integers.

```raku
say add(10, 20);
# say add(pi, e); # Error
```

You can pass only `Int` values. Any other type gives a compile-time error. Such an error comes before the program runs.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Note that Raku does not convert the types for you here. In other cases, such a conversion is possible.

```raku
# say add('3', '4'); # Error
say '3' + '4'; # OK and is 7
```

%%tipblock
## Is it a compile-time error?
Look at the start of the error message. Is it `===SORRY!=== Error while compiling`? Then the error happened at compile time.
%%/tipblock

{% include nav.html %}
