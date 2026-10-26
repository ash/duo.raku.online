---
title: Data types and scalar containers
---

{% include menu.html %}

Let's look at a program. It uses the same variable for different kinds of data. We use `dd` to see the data at each step. This example only shows how things work. It is not a good way to write programs.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Each `dd` call shows the current value of `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

At first, the variable is empty. `dd` shows its value as `Any`. This is the undefined base value. Every untyped container starts with it. After the assignments, `dd` shows the integer. Then it shows the string.

Note that `dd` does not print a type before the name here. An untyped container has no fixed type. So `dd` shows only the value. [A container with a declared type](/advanced/scalar-containers/type-constraints) works differently. You will see this in the next topic.

{% include nav.html %}
