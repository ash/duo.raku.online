---
title: The solution of ’Default discount‘
---

{% include menu.html %}

Here is one possible solution to the task.

## Code

```raku
my $discount is default(0);
say $discount;

$discount = 15;
say $discount;
```

🦋 You can find the source code in the file [default-discount.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/default-discount.raku).

Of course, it would be simpler to give the variable the value `0` right away:

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

1. The `is default(0)` trait gives the container a value to use until something is assigned. When you read the variable, you get `0`. Unlike with an undeclared default, there is no _uninitialized value_ warning.

1. After the assignment, the container holds `15`, and the default value is no longer important.

{% include nav.html %}
