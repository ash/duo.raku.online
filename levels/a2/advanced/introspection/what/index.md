---
title: Using `WHAT`
---

{% include menu.html %}

`WHAT` is a pseudo-method. It gives you the type of a value. You use it almost like `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Both print the type, but they look a little different. `.^name` gives only the name. `WHAT` gives the type itself, as a type object. It shows it in round brackets:

```
Int
(Int)
```

Take a variable with no type constraint. At first, its type is `Any`. Then you assign a value. Now `^name` and `WHAT` both show the type of this value:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

With a type constraint, Raku knows the type at once. This is true even before you assign a value:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Comparing type objects

`WHAT` returns the type object itself. So you can compare two type objects. Use the operator `===` for this. It is the _value identity_ operator. It checks if both sides are the same value. Each type has only one type object. So `===` easily checks if two values have the same type:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` compares numbers. But `===` compares identity. So it works directly with type objects. It also works with other values.

{% include nav.html %}
