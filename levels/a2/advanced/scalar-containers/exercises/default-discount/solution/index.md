---
title: The solution of ’Default discount‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 You can find the source code in the file [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Of course, there is a simpler solution. Give the variable the value `0` when you create it:

```raku
my $discount = 0;
say $discount;

$discount = 15;
say $discount;
```

## Output

```
0
15
```

## Comments

1. The `is default(0)` trait gives the container a backup value. The container uses it until you assign something. If you read the variable, you get `0`. Without a declared default, you get an _uninitialized value_ warning. Here, there is no such warning.

1. After the assignment, the container keeps `15`. The default value does not matter any more.

{% include nav.html %}
