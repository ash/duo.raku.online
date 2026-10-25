---
title: Type constraints
---

{% include menu.html %}

Raku has a so-called gradual type system. In most cases, you do not need to worry about the type of a variable. But sometimes you may want to restrict a variable to one type. You can do this by giving the type, as shown below:

```raku
my Int $var = 42;
```

Now you can assign another integer value to `$var`. But if you try to put a string into it, you get an exception. The same happens even with a floating-point number:

```raku
my Int $var = 42;
$var = '314E-2';
```

This program gives the following error:

    Type check failed in assignment to $var; expected Int but got Str ("314E-2")
      in block <unit> at t.raku line 2

{% include nav.html %}
