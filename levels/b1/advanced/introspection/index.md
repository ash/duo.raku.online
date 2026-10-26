---
title: Introspecting containers
---

{% include menu.html %}

_Introspection_ means asking a value or a container about itself. You can ask about its type, the container behind it, or how it works inside. You have already used one introspection tool, `.^name`, which prints the type of a value.

Raku has a small family of such tools, and their names are in capital letters: `WHAT`, `VAR`, `WHO`, and `HOW`. They are sometimes called _pseudo-methods_. This is because the compiler gives them a special meaning. It does not treat them as ordinary methods. This section looks at each of them.

As a reminder, here is `.^name` again. This container has no type constraint, and we store different values in it. `.^name` shows how its type changes:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

At first, the container is `Any`. Then it shows the type of whatever value it holds at the moment.

{% include nav.html %}
