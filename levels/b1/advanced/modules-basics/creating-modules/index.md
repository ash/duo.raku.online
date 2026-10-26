---
title: Creating modules
---

{% include menu.html %}

When programs get bigger, it helps to split them into reusable pieces. A _module_ is a unit of code in its own file. Other programs can load and use it.

A module file has the extension `.rakumod`. It begins with `unit module`, which gives the module its name. The subroutines inside are private by default. To share one with code that uses the module, mark it with the `is export` trait.

Here is a module in a file called `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

The `hello` subroutine has `is export`, so any program that uses the module can see it. Without `is export`, a subroutine would stay private to the module.

A module can also share data with `our` variables. Other code can reach them through the name of the module. To add a version number to `Greeting`, one more line in the file is enough:

```raku
our $version = '1.0';
```

Once this line is in `Greeting.rakumod`, the value is available as `$Greeting::version`. This works wherever the module is loaded.

The next topics show [how a program loads such a module](/advanced/modules-basics/using-modules). They also explain what exactly the program gets from it.

{% include nav.html %}
