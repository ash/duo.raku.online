---
title: Data types and scalar containers
---

{% include menu.html %}

Here is a program that uses one variable for different kinds of data. We use `dd` to see what is in the container at each step. This example only shows the idea. We do not recommend this style of programming.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Each call to `dd` shows what is in the variable `$value` at that moment:

```
$value = Any
$value = 42
$value = "forty-two"
```

At first, the variable is empty, and `dd` shows its value as `Any`. This is the undefined base value that every untyped container starts with. After the assignments, `dd` shows the integer and then the string.

Note that `dd` does not print a type before the name here. An untyped container is not tied to any type, so only the value is shown. The next topic shows that [a container with a declared type](/advanced/scalar-containers/type-constraints) behaves differently.

{% include nav.html %}
