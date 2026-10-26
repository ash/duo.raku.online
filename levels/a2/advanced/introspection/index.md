---
title: Introspecting containers
---

{% include menu.html %}

_Introspection_ means that you ask a value or a container about itself. You can ask about its type. You can ask about the container behind it. You can also ask how Raku makes it work inside. You already know one tool for introspection, `.^name`. It prints the type of a value.

Raku has a small group of such tools. Their names are in capital letters: `WHAT`, `VAR`, `WHO`, and `HOW`. People sometimes call them _pseudo-methods_. They look like methods. But they are not normal methods. The compiler gives them a special meaning. This section looks at each of them.

Here is a reminder about `.^name`. The container in this code has no fixed type. We store different values in it. `.^name` shows how the type changes:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

At first, the container is `Any`. After that, it shows the type of its current value.

{% include nav.html %}
