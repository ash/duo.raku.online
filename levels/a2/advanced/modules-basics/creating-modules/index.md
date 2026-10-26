---
title: Creating modules
---

{% include menu.html %}

Programs get bigger over time. Then it is good to split them into pieces. You can use these pieces again. A _module_ is one such piece of code. It is in its own file. Other programs can load it and use it.

A module file has the extension `.rakumod`. It starts with `unit module` and the name of the module. Normally, the subroutines in a module are private. Only the module itself can use them. Do you want to share a subroutine with other code? Mark it with the trait `is export`.

Here is a module in the file `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

The subroutine `hello` has `is export`. So every program that uses the module can see it. A subroutine without `is export` stays private. Only the module itself can use it.

A module can also share data. For this, it uses `our` variables. Other code can get to them through the name of the module. Let’s add a version number to `Greeting`. We only need one more line in the file:

```raku
our $version = '1.0';
```

Now `Greeting.rakumod` has this line. So the value is available as `$Greeting::version`. This works everywhere the module is loaded.

The next topics show [how a program loads such a module](/advanced/modules-basics/using-modules). They also show what the program gets from it.

{% include nav.html %}
