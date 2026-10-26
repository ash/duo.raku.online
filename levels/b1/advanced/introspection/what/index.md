---
title: Using `WHAT`
---

{% include menu.html %}

`WHAT` is a pseudo-method that lets you get the type of a value. You can use it in almost the same way as `.^name`:

```raku
my $var = 42;

say $var.^name;
say $var.WHAT;
```

Both print the type, but they look slightly different. `.^name` gives just the name, and `WHAT` shows the type object in parentheses:

```
Int
(Int)
```

If a variable has no type constraint, its type is `Any` at first. After you assign a value, `^name` and `WHAT` both show its type:

```raku
my $var;
say $var.^name; # Any
say $var.WHAT;  # (Any)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

With a type constraint, the type is known right away, even before you assign anything:

```raku
my Str $var;
say $var.^name; # Str
say $var.WHAT;  # (Str)

$var = 'Hello';
say $var.^name; # Str
say $var.WHAT;  # (Str)
```

## Comparing type objects

`WHAT` returns the type object itself, so you can compare two type objects with `===`. This is the _value identity_ operator. It checks whether both sides are exactly the same value. Each type has only one type object. So this is a clean way to check whether two values have the same type:

```raku
my $a = 42;
my $b = 100;

say $a.WHAT === $b.WHAT; # True  — both are Int
say $a.WHAT === Int;     # True
say $a.WHAT === Str;     # False
```

`==` compares numbers, but `===` compares identity. So it works directly with type objects, and with other values too.

{% include nav.html %}
