---
title: Type constraints
---

{% include menu.html %}

Raku has a so-called gradual type system. This means that you can use types only where you want them. Usually, you do not need to give the type of a variable. But sometimes you may want to limit the type of a variable. Then give the type like this:

```raku
my Int $var = 42;
```

Now you can assign another integer value to `$var`. But you cannot put a string in it. You cannot even put a floating-point number in it. If you try, you get an exception:

```raku
my Int $var = 42;
$var = '314E-2';
```

The program gives this error:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
