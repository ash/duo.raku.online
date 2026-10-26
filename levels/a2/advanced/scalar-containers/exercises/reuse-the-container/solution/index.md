---
title: The solution of ’Typed or untyped‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 You can find the source code in the file [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Output

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Comments

1. `dd` shows the two containers in different ways. For the untyped one, it prints only `$untyped`. For the typed one, it adds the declared type in front: `Int $typed`. This is exactly what a declared type changes.

1. The empty values are different too. An untyped container starts with `Any`. This is the basic undefined value. A typed container starts with the undefined value of *its* type. Here, this is `Int`.

1. Then both variables get `42`. Now the values look the same. But `$typed` still has its type. It does not accept a value that is not an integer. `$untyped` accepts any value.

{% include nav.html %}
