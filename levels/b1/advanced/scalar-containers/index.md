---
title: Scalar containers
---

{% include menu.html %}

As the name tells you, scalar containers keep single, or scalar, values. These containers have the `$` sigil.

Here is a very simple and direct way to use a scalar:

```raku
my $lang = 'Raku';
```

The `$lang` variable is a scalar container.

By default, scalar containers do not limit the type of their data. So you can keep a value of any type in them. Here is the simplest way to show this. You can use the same variable for an integer and then for a string:

```raku
my $value = 42;
$value = 'forty-two';
```

The author does not encourage you to write programs this way.

Internally, this means the following. By default, a new container can keep values of the `Any` type. `Any` is the base type of most other types, such as `Int` or `Str`.

{% include nav.html %}
