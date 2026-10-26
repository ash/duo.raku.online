---
title: The solution of ’Typed or untyped‘
---

{% include menu.html %}

Here is one possible solution to the task.

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

1. `dd` describes the two containers differently. For the untyped one, it prints just `$untyped`. For the typed one, it puts the declared type in front: `Int $typed`. This prefix is exactly what a declared type changes.

1. The empty values are different, too. An untyped container starts with the simple undefined value `Any`. But a typed container starts with the undefined value of *its* type, `Int`.

1. After you assign `42` to both, the values look the same. But `$typed` still has its type, so it would not accept a non-integer value. `$untyped`, on the other hand, accepts anything.

{% include nav.html %}
